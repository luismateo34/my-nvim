local  F = require("keymap.telescopemap.function")
--vim.keymap.set(opts.mode, key, rhs, map_options)
local map = vim.keymap.set
--telescope
local builtin = require("telescope.builtin")
--map("n", "<leader>ff", builtin.find_files, { noremap = true })
map("n", "<leader>ls", builtin.lsp_workspace_symbols, { noremap = true })
map("n", "<leader>km", builtin.keymaps, { noremap = true })
map("n", "<leader>bl", builtin.buffers, { noremap = true, desc = "buffers" })
map("n", "<leader>ht", builtin.help_tags, { noremap = true, desc = "Neovim help" })
map("n", "<leader>da", builtin.diagnostics, { noremap = true })
map("n", "<leader>cf", builtin.current_buffer_fuzzy_find, { noremap = true })

map("n", "<leader>pp", function()
	F.project_files()
end, { desc = "Open Project files" })

map("n", "<leader>gc", function()
	F.branches()
end, { desc = "Git Branches selector" })

map("n", "<leader>pw", function()
	F.grep_word()
end, { desc = "Grep word under cursor" })

map("n", "<leader>ps", function()
	F.grep_string()
end, { desc = "Grep provided input string" })

map("n", "<leader>rn", function()
	F.find_nvim_config()
end, { desc = "Search Files in nvim config directory" })

map("n", "<leader>ff",  function ()
	F.file_browser_relative()
end, { desc = "Current directory" })

map("n", "<leader>bp", function ()
	F.file_browser()
end , { desc = "Project directory" })

map("n", "<Alt>rf", function ()
	F.refactor()
end, { noremap = true })

