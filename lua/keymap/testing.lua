local map = vim.keymap.set
--testing
map("n", "<leader>T", ":TestNearest<CR>", { noremap = true })
map("n", "<leader>TF", ":TestFile<CR>", { noremap = true })
map("n", "<leader>TS", ":TestSuite<CR>", { noremap = true })
map("n", "<leader>TL", ":TestLast<CR>", { noremap = true })
map("n", "<leader>TV", ":TestVisit<CR>", { noremap = true })
