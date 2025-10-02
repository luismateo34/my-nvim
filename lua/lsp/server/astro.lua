local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config

nvim_lsp['astro'] = {
         cmd={ "astro-ls", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = {"astro"},
        root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" }

}
vim.lsp.enable('astro')
