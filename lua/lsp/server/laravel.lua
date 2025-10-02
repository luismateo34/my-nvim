local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config

nvim_lsp[ "laravel_ls"] = {
        cmd = { "laravel-ls" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "php", "blade" },
        root_markers = { "artisan" },

}
vim.lsp.enable('laravel_ls')
