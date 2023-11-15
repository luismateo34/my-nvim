  vim.cmd([[
  nnoremap <silent> <leader>tm :lua require('dap-python').test_method()<CR>
  nnoremap <silent> <leader>tc :lua require('dap-python').test_class()<CR>
  vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
]])
