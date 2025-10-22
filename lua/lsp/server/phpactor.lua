local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config

nvim_lsp['phpactor'] = {
        cmd = { "phpactor", "language-server"},
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = {"php" },
        root_markers = { ".git", "composer.json", ".phpactor.json", ".phpactor.yml" },

}
vim.lsp.enable('phpactor')
