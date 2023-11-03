local map = vim.keymap.set
--testing
map("n", "<leader>t", ":TestNearest<CR>", { noremap = true })
map("n", "<leader>T", ":TestFile<CR>", { noremap = true })
map("n", "<leader>TT", ":TestSuite<CR>", { noremap = true })
map("n", "<leader>lt", ":TestLast<CR>", { noremap = true })
map("n", "<leader>tv", ":TestVisit<CR>", { noremap = true })
