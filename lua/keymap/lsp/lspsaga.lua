local saga = require("lspsaga")
saga.setup({
	ui = {
		winblend = 10,
		border = "rounded",
		colors = {
			normal_bg = "#002b36",
		},
	},
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
--vim.keymap.set("n", "<C-a>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "gl", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "fd", "<Cmd>Lspsaga finder<CR>", opts)
vim.keymap.set("n", "gd", "<Cmd>Lspsaga goto_type_definition<CR>", opts)
vim.keymap.set("n", "<A-t>", "<Cmd>Lspsaga term_toggle<CR>", opts)
vim.keymap.set("n", "<space>so", "<Cmd>Lspsaga outline<CR>", opts)
vim.keymap.set("n", "lp", "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)

-- code action
local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<leader>ca", function()
	codeaction:code_action()
end, { silent = true })
vim.keymap.set("v", "<leader>ca", function()
	vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
	codeaction:range_code_action()
end, { silent = true })
