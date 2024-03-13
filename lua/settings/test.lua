

--test vitest
--javascript and typescript
vim.cmd([[
let g:test#javascript#runner = "vitest"
let g:test#javascript#vitest#file_pattern = '.*'

let g:test#typescript#runner = "vitest"
let g:test#typescript#vitest#file_pattern = '.*'

let test#strategy = "neovim_sticky"
]])
