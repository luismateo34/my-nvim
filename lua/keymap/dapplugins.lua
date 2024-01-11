local map = vim.keymap.set

-- python
map("n", "<leader>rpt", ":lua require('dap-python').test_method()<CR>", { noremap = true })
map("n", "<leader>rpc", ":lua require('dap-python').test_class()<CR>", { noremap = true })
map("n", "<leader>rpd", ":lua require('dap-python').debug_selection()<CR>", { noremap = true })
-- go
map("n", "<leader>rgl", ":lua require('dap-go').debug_last_test() <CR>", { noremap = true })
map("n", "<leader>rgt", ":lua require('dap-go').debug_test()<CR>", { noremap = true })
