vim.cmd('let g:ale_use_neovim_diagnostics_api = 1')
vim.cmd([[
let g:ale_fixers = {
\  'python': ['flake8'],
\  'go': ['golint'],
\  'sql': ['sql-lint'],
\  'javascript': ['eslint'],
\  'typescript': ['eslint'],
\  'jsx': ['eslint'],
\  'tsx': ['eslint'],
\}
" In ~/.vim/vimrc, or somewhere similar. stylelint para JSX
"let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
"let g:ale_linter_aliases = {'tsx': ['css', 'typescript']}
"let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
"let g:ale_linters = {'tsx': ['stylelint', 'eslint']}
let g:ale_linters_explicit = 1
let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_disable_lsp = 1
set rtp+=$GOPATH/pkg/mod/golang.org/x/lint@v0.0.0-20210508222113-6edffad5e616/misc/vim
]])
