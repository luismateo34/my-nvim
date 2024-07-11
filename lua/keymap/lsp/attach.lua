return function(bufnr)
	vim.api.nvim_create_autocmd('LspAttach', {
		group = vim.api.nvim_create_augroup('UserLspConfig', {}),
		callback = function(ev)
			vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
			vim.keymap.set(
				"n",
				"K",
				vim.lsp.buf.hover,
				{ buffer = 0, desc = "LSP Help information of symbol under the cursor" }
			)
			vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true, desc = "LSP Restart Server" })
			vim.keymap.set("n", "<leader>vn", vim.diagnostic.goto_next, { desc = "Goes to next diagnostic error" })
			vim.keymap.set("n", "<leader>vp", vim.diagnostic.goto_prev, { desc = "Goes to prev diagnostic error" })
			vim.keymap.set("n", "<leader>dc", vim.lsp.buf.declaration, { noremap = true, desc = "declaration function" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, desc = "definition function" })
			vim.keymap.set("n", "<leader>ho", vim.lsp.buf.hover, { buffer = 0, noremap = true, desc = "hover" })
			vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, { noremap = true, desc = "implementation function" })
			vim.keymap.set(
				"n",
				"<leader>aw",
				vim.lsp.buf.add_workspace_folder,
				{ noremap = true, desc = " list_workspace_folders " }
			)
			vim.keymap.set(
				"n",
				"<leader>rw",
				vim.lsp.buf.remove_workspace_folder,
				{ noremap = true, desc = "remove_workspace_folder" }
			)
			vim.keymap.set("n", "<leader>fw", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, { noremap = true, desc = "list_workspace_folders" })
			vim.keymap.set("n", "<leader>td", vim.lsp.buf.type_definition, { noremap = true, desc = "type_definition" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, desc = "rename" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = 0, desc = "lsp code actions" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, desc = "references" })

			vim.keymap.set({ "n", "v" }, "<leader>vca", vim.lsp.buf.code_action, { desc = "LSP (null ls) Code actions" })
			vim.keymap.set("n", "<leader>ft", function()
				return vim.lsp.buf.format({ async = true })
			end, { desc = "LSP (null ls) Format file" })

			-- Enable completion triggered by <c-x><c-o>

			--vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
		end,
	})
end
