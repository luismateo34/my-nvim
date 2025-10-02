local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("keymap.lsp.attach")
local lsp_flags = {
	debounce_text_changes = 150,
}
local nvim_lsp = vim.lsp.config

nvim_lsp['ts_ls'] = {
	cmd = { "typescript-language-server", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
	plugins = {
		{
			name = "@vue/typescript-plugin",
			location = "/usr/lib/node_modules/@vue/typescript-plugin",
			languages = { "vue" },
		},
	},

}
vim.lsp.enable('ts_ls')
-------------------------------------
nvim_lsp['vue_ls'] = {
	cmd = { "vue-language-server", "--stdio" },
	on_attach = on_attach,
	capabilities = capabilities,
	lsp_flags = lsp_flags,
	filetypes = { "vue" },
        root_markers = { "package.json" }
}


vim.lsp.enable('vue_ls')
