vim.cmd([[
let g:ale_use_neovim_diagnostics_api = 1
let g:ale_disable_lsp = 1

let g:ale_completion_autoimport = 0
let g:ale_completion_enabled = 0
let g:ale_linters_explicit   =   1

let g:ale_fix_on_save = 0
let g:ale_lint_on_save = 1
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.vue set filetype=typescript.tsx
    au BufNewFile,BufRead *.svelte set filetype=typescript.tsx
    au BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup END

let g:ale_linter_aliases = {'vue': ['typescript', 'javascript']}
let g:ale_linter_aliases = {'svelte': ['typescript', 'javascript']}

let g:ale_linters =  {
 \     'javascript'  :   [  'eslint'  ],
 \     'typescript'  :   [  'eslint'  ],
\       'tsx'  :          [ 'eslint' ],
 \     'vue' : ['eslint'],
 \     'svelte' : ['eslint'],
 \  }

]])
