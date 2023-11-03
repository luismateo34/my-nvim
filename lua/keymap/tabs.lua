local map = vim.keymap.set
--tabs navigation
--
--
map("n", "<leader>h", ":tabp<CR>", { noremap = true })
map("n", "<leader>l", ":tabn<CR>", { noremap = true })
map("n", "<leader>tl", ":tablast<CR>", { noremap = true })
map("n", "<leader>tf", ":tabfirst<CR>", { noremap = true })
map("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
map("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
map("n", "<leader>to", ":tabonly<CR>", { noremap = true })
map("n", "<leader>tj", ":-tabmove<CR>", { noremap = true })
map("n", "<leader>tk", ":+tabmove<CR>", { noremap = true })
