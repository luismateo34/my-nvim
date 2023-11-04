vim.cmd([[
let g:ale_use_neovim_diagnostics_api = 1
let g:ale_disable_lsp = 1
let b:ale_fixers = {'javascript': ['eslint']}
let b:ale_fixers = {'typescript': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 0
let g:ale_completion_enabled = 0
]])
