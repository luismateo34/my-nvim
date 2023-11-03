local map = vim.keymap.set
--telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { noremap = true })
map("n", "<leader>ls", builtin.lsp_workspace_symbols, { noremap = true })
map("n", "<leader>km", builtin.keymaps, { noremap = true })
map("n", "<leader>fb", builtin.buffers, { noremap = true })
map("n", "<leader>fh", builtin.help_tags, { noremap = true })
map("n", "<leader>da", builtin.diagnostics, { noremap = true })
map("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { noremap = true })
