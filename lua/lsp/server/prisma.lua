local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config

nvim_lsp['prismals'] = {
	cmd = { "prisma-language-server", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "prisma" },
	root_markers = { ".git", "package.json" },
	settings = {
		prisma = {
			prismaFmtBinPath = ""
		}
	}

}
vim.lsp.enable('prismals')
