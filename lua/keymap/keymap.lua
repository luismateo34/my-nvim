local map = vim.keymap.set
--speed key
vim.cmd("imap zx <ESC>")
map("n", "<leader>w", ":w<CR>", { noremap = true })
map("n", "<leader>q", ":q<CR>", { noremap = true })
map("n", "<Leader>Q", ":q!<CR>", { noremap = true })
--testing
map("n", "<leader>t", ":TestNearest<CR>", { noremap = true })
map("n", "<leader>T", ":TestFile<CR>", { noremap = true })
map("n", "<leader>TT", ":TestSuite<CR>", { noremap = true })
map("n", "<leader>lt", ":TestLast<CR>", { noremap = true })
map("n", "<leader>tv", ":TestVisit<CR>", { noremap = true })
--split resize
map("n", "<leader>>", ":10<C-w>>", { noremap = true })
map("n", "<leader><", ":10<C-w><", { noremap = true })
-- nvimtree shortcut
map("n", "<leader>n", ":NvimTreeFindFileToggle<CR>", { noremap = true })
--tabs navigation
map("n", "<leader>h", ":tabp<CR>", { noremap = true })
map("n", "<leader>l", ":tabn<CR>", { noremap = true })
map("n", "<leader>tl", ":tablast<CR>", { noremap = true })
map("n", "<leader>tf", ":tabfirst<CR>", { noremap = true })
map("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
map("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
map("n", "<leader>to", ":tabonly<CR>", { noremap = true })
map("n", "<leader>tj", ":-tabmove<CR>", { noremap = true })
map("n", "<leader>tk", ":+tabmove<CR>", { noremap = true })
--<buffer>
map("n", "<leader>bu", ":buffers<CR>", { noremap = true })
--keeping it centered
map("n", "n", "nzzzv", { noremap = true })
map("n", "N", "Nzzzv", { noremap = true })
map("n", "J", "mzJ`z", { noremap = true })
--Moving text
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
map("n", "<leader>k", ":m .-2<CR>==", { noremap = true })
map("n", "<leader>j", ":m .+1<CR>==", { noremap = true })
--faster scrolling
map("n", "<C-j>", ":10<C-e>", { noremap = true })
map("n", "<C-k>", ":10<C-y>", { noremap = true })
--run current file with node
map("n", "<leader>x", ":!node %<cr>", { noremap = true })
--git add %
map("n", "<A-g>", ":Git add %<cr>", { noremap = true })
--prettier
map("n", "<leader>p", ":Prettier<CR>", { noremap = true })
--linting
map("n", "<leader>ft", ":lua vim.lsp.buf.format()<CR>", { noremap = true })
--eslint
map("n", "<leader>af", ":!eslint<CR>", { noremap = true })
--stylelint
map("n", "<leader>sl", ":!stylelint<CR>", { noremap = true })
--telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { noremap = true })
map("n", "<leader>ls", builtin.lsp_workspace_symbols, { noremap = true })
map("n", "<leader>fg", builtin.live_grep, { noremap = true })
map("n", "<leader>fb", builtin.buffers, { noremap = true })
map("n", "<leader>fh", builtin.help_tags, { noremap = true })
--rest.nvim
map( "n", "<A-r>", ":lua require('rest-nvim').run()<CR>", { noremap = true})
map( "n", "<A-l>", ":lua require('rest-nvim').last(true)<CR>", { noremap = true})


--vim.cmd([[
--nnoremap <Plug>RestNvim :lua require('rest-nvim').run()<CR>
--nnoremap <Plug>RestNvimPreview :lua require('rest-nvim').run(true)<CR>
--nnoremap <Plug>RestNvimLast :lua require('rest-nvim').last()<CR>
--" nnoremap <Plug>RestNvimSelectEnv :lua require('rest-nvim').last()<CR>
-- ]])

-- split windows native shortcut
--C-ws or :sp o :split : split windows in two
-- C-wv or :vsp or :vs : vertical split window
-- move to window :C-w(h,j,k,l)
--C-wn o :new : creat new empty
-- C-ww o C-w C-w : move to window below, above
--C-wo or :on : make current window one on screen
--Remap surround to lowercase s so it does not add an empty space
