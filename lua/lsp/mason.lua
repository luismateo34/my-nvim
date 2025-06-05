local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")
mason.setup()
mason_lspconfig.setup({
	ensure_installed = {
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
		"jsonls",
		--"phpactor",
		"intelephense"
	},
	automatic_installation = true, -- not the same as ensure_installed
})
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
