local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config

nvim_lsp['ts_ls'] = {
         cmd={ "typescript-language-server", "--stdio"},
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }

}
vim.lsp.enable('ts_ls')
