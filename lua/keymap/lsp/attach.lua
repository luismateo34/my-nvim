return function()
         ---diagnostic
	vim.keymap.set("n", "<leader>vn", vim.diagnostic.get_next, { desc = "Get to next diagnostic " })
	vim.keymap.set("n", "<leader>vp", vim.diagnostic.get_prev, { desc = "Goes to prev diagnostic" })
        ---declaraion and definition
	vim.keymap.set("n", "<leader>dc", vim.lsp.buf.declaration, { noremap = true, desc = "declaration function" })
	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, desc = "definition function" })
	vim.keymap.set("n", "<leader>td", vim.lsp.buf.type_definition, { noremap = true, desc = "type_definition" })
	vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, { noremap = true, desc = "implementation function" })
         --hover
	vim.keymap.set("n", "<leader>ho", vim.lsp.buf.hover, { buffer = 0, noremap = true, desc = "hover" })
        --workspace
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
         ---rename
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, desc = "rename" })
        ---references
	vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, desc = "references" })
        ----------code_action
	vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP (null ls) Code actions" })
        --format lsp
	vim.keymap.set("n", "<leader>ft", function()
		return vim.lsp.buf.format({ async = true })
	end, { desc = "LSP (null ls) Format file" })

	vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
end
