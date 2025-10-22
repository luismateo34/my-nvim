return {
	"williamboman/mason.nvim",
	dependencies = {
		{
			"glepnir/lspsaga.nvim", -- LSP UIs
			requires = {
				{ "kyazdani42/nvim-web-devicons" },
				{ "nvim-treesitter/nvim-treesitter" },
			},
		},
		{
			"jay-babu/mason-null-ls.nvim",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = {
				"williamboman/mason.nvim",
			},
		},
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",

	},
	opts = {
		ui = {
			border = "rounded",
		},
	},
	config = function()
		local mason = require("mason")
		local mason_null_ls = require("mason-null-ls")
		local lsp = require("mason-lspconfig")
		mason.setup()
		local ensure_installed = {
			"ts_ls",
			"html",
			"cssls",
			"tailwindcss",
			"lua_ls",
			"mdx_analyzer",
			"dockerls",
			"astro",
			"pyright",
			"prismals",
			"yamlls",
			"golangci_lint_ls",
			"gopls",
			--"jsonls",
			"laravel_ls",
			"phpactor",
			--"intelephense"
		}
		lsp.setup({ ensure_installed = ensure_installed, automatic_installation = true })
		--------------------------------
		mason_null_ls.setup({
			ensure_installed = {
				"stylua",
				"phpcsfixer",
				"phpcs",
				"blade-formatter",
				"markdownlint",
				"prettier",
				"golangci-lint",
			},
			automatic_installation = true,
		})
	end

}
