local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("lsp.attach")
local nvim_lsp = require("lspconfig")


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
	on_attach = function(_, bufnr)
		on_attach(bufnr)
		enable_format_on_save(_, bufnr)
	end,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
			hint = {
				enable = true,
			},
			completion = {
				callSnippet = "Replace",
			},
		},
	},
})
