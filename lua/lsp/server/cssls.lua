local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp['cssls'] = {
         cmd={ "vscode-css-language-server", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "css", "scss", "less" },
        root_markers = { "package.json", ".git" }

}
vim.lsp.enable('cssls')
