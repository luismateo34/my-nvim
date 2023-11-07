-- import mason plugin safely
--local mason_status, mason = pcall(require, "mason")
--if not mason_status then
--return
--end

local mason = require("mason")
-- import mason-lspconfig plugin safely
--local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
--if not mason_lspconfig_status then
--return
--end

local mason_lspconfig = require("mason-lspconfig")
--local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
--if not mason_null_ls_status then
--return
--end

local mason_null_ls = require("mason-null-ls")
-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
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
