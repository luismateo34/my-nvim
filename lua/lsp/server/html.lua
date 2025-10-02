local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
----------------------------
nvim_lsp['html'] = {
         cmd={ "vscode-html-language-server", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = {"html", "templ"},
        root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" }

}

vim.lsp.enable('html')
