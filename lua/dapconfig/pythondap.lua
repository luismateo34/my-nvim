  vim.cmd([[
  nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
  nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
  vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
]])
