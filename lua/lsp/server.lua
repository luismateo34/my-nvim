local on_attach = require("lsp.attach")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end

nvim_lsp.lua_ls.setup({
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		on_attach(client, bufnr)
		enable_format_on_save(client, bufnr)
	end,
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},

			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

nvim_lsp.tailwindcss.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

local servers = { "cssls", "svelte", "astro", "tsserver", "html", "pyright", "sqlls", "jsonls", "prismals" }
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
nvim_lsp.intelephense.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

