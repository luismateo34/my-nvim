local map = vim.keymap.set
--speed key
vim.cmd("imap zx <ESC>")
map("n", "<leader>w", ":w<CR>", { noremap = true })
map("n", "<leader>q", ":q<CR>", { noremap = true })
map("n", "<Leader>Q", ":q!<CR>", { noremap = true })
--split resize
map("n", "<leader><", ":10<C-w><", { noremap = true })
map("n", "<leader>>", ":10<C-w>>", { noremap = true })
-- nvimtree shortcut
map("n", "<leader>n", ":NvimTreeFindFileToggle<CR>", { noremap = true })
--<buffer>
map("n", "<leader>bf", ":buffers<CR>", { noremap = true })
--Moving text
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
map("n", "<leader>k", ":m .-2<CR>==", { noremap = true })
map("n", "<leader>j", ":m .+1<CR>==", { noremap = true })
--git
map("n", "<A-g>", ":Git add %<cr>", { noremap = true })
--prettier
map("n", "<leader>p", ":Prettier<CR>", { noremap = true })
--rest.nvim
--map("n", "<A-r>", ":lua require('rest-nvim').run()<CR>", { noremap = true })
--map("n", "<A-l>", ":lua require('rest-nvim').last(true)<CR>", { noremap = true })

-- split windows native shortcut
--C-ws or :sp o :split : split windows in two
-- C-wv or :vsp or :vs : vertical split window
-- move to window :C-w(h,j,k,l)
--C-wn o :new : creat new empty
-- C-ww o C-w C-w : move to window below, above
--C-wo or :on : make current window one on screen
--Remap surround to lowercase s so it does not add an empty space
