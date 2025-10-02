local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp['svelte'] = {
         cmd={ "svelteserver", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "svelte" },

}
vim.lsp.enable('svelte')
