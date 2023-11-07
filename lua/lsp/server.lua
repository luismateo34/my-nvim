local on_attach = require("lsp.attach")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
--local status, nvim_lsp = pcall(require, "lspconfig")
--if not status then
--return
--end

local nvim_lsp = require("lspconfig")

local lsp_flags = {
	debounce_text_changes = 150,
}
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
	vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
	vim.api.nvim_create_autocmd("BufWritePre", {
		group = augroup_format,
		buffer = bufnr,
		callback = function()
			vim.lsp.buf.format({ bufnr = bufnr })
		end,
	})
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
nvim_lsp.tailwindcss.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

local servers = {
	"cssls",
	"mdx_analyzer",
	"svelte",
	"dockerls",
	"docker_compose_language_service",
	"astro",
	"tsserver",
	"html",
	"pyright",
	"sqlls",
	"jsonls",
	"prismals",
	"golangci_lint_ls",
}
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
