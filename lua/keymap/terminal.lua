local map = vim.keymap.set
local function split_term()
	local currentBuff = vim.api.nvim_buf_get_name(0)
	local term = string.sub(currentBuff, 1, 4)
	local Isterm = term == "term"
	vim.opt.splitright = true
  --teclea enter desde codigo lua
	local cr = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
	--vim.opt.splitbelow = true
	if Isterm then
		vim.api.nvim_feedkeys("a", "t", false)
		vim.api.nvim_chan_send(vim.bo.channel, "exit")
		--Simulate pressing the enter key
		vim.api.nvim_feedkeys(cr, "t", false)
	end
	if not Isterm then
		vim.api.nvim_command('vsplit')
		vim.api.nvim_command('terminal')
	end
end

map("n", "<C-t>", function()
	split_term()
end, { noremap = true })
--------------------------------------------------
