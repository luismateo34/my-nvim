

local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end

local protocol = require("vim.lsp.protocol")

--local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
--local enable_format_on_save = function(_, bufnr)
	--vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
	--vim.api.nvim_create_autocmd("BufWritePre", {
		--group = augroup_format,
		--buffer = bufnr,
		--callback = function()
			--vim.lsp.buf.format({ bufnr = bufnr })
		--end,
	--})
--end

local on_attach = function()
	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		callback = function(ev)
			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

			local opts = { buffer = ev.buf }
			vim.keymap.set("n", "<space>dc", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "<space>gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "<space>ho", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "imp", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<space>aw", vim.lsp.buf.add_workspace_folder, opts)
			vim.keymap.set("n", "<space>rw", vim.lsp.buf.remove_workspace_folder, opts)
			vim.keymap.set("n", "<space>fw", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, opts)
			vim.keymap.set("n", "<space>td", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "<space>ft", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
		end,
	})
end

protocol.CompletionItemKind = {
	"", -- Text
	"", -- Method
	"", -- Function
	"", -- Constructor
	"", -- Field
	"", -- Variable
	"", -- Class
	"ﰮ", -- Interface
	"", -- Module
	"", -- Property
	"", -- Unit
	"", -- Value
	"", -- Enum
	"", -- Keyword
	"﬌", -- Snippet
	"", -- Color
	"", -- File
	"", -- Reference
	"", -- Folder
	"", -- EnumMember
	"", -- Constant
	"", -- Struct
	"", -- Event
	"ﬦ", -- Operator
	"", -- TypeParameter
}
--manage global and project-local settings.
require("neoconf").setup({})
--Set up completion using nvim_cmp with LSP source
local capabilities = require("cmp_nvim_lsp").default_capabilities()

nvim_lsp.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = nvim_lsp.util.root_pattern("package.json"),
	single_file_support = false,
})
require("deno-nvim").setup({
	server = {
		on_attach = on_attach,
		capabilites = capabilities,
		root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
		init_options = {
			lint = true,
		},
	},
	-- if you're using dap to debug (see the README for more info)
	--   dap = {
	--       adapter = ...
	--         }
})



--use eslint with null-ls
--nvim_lsp.eslint.setup({
--on_attach = function(client, bufnr)
--vim.api.nvim_create_autocmd("BufWritePre", {
--buffer = bufnr,
--command = "EslintFixAll",
--})
--end,
--})
--nvim_lsp.lua_ls.setup({
--	capabilities = capabilities,
--	on_attach = function(client, bufnr)
--		on_attach(client, bufnr)
--		enable_format_on_save(client, bufnr)
--	end,
--	settings = {
--		Lua = {
--		diagnostics = {
--				-- Get the language server to recognize the `vim` global
--				globals = { "vim" },
--			},
--
--			workspace = {
--				-- Make the server aware of Neovim runtime files
--				library = vim.api.nvim_get_runtime_file("", true),
--				checkThirdParty = false,
--			},
--		},
--	},
--})

--nvim_lsp.tailwindcss.setup({
--	on_attach = on_attach,
--	capabilities = capabilities,
--})

 local servers = { 'cssls', 'html', 'lua_ls', 'pyright', 'pyright', 'golangci_lint_ls','jsonls' }
 for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup ({
       on_attach = on_attach,
           capabilities = capabilities,
             })
             end


-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
	update_in_insert = true,
	float = {
		source = "always", -- Or "if_many"
	},
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	update_in_insert = false,
	virtual_text = { spacing = 4, prefix = "●" },
	severity_sort = true,
})

