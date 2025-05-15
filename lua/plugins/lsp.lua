return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"williamboman/mason.nvim",
			opts = {
				ui = {
					border = "rounded",
				},
			},
		},
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
	event = "VeryLazy",
	--config = function()
	--require("lsp")
	--end,
}
