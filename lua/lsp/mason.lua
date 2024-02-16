local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")
mason.setup()
mason_lspconfig.setup({
	ensure_installed = {
		"volar",
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
		-- "emmet_ls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = false,
})
