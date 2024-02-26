require("settings.settings")
require("colorizer").setup()
require("settings.aleConfig")
require("settings.ultisnips")
require("settings.blade-treesitter")
require("settings.mdx")

-- configuracion del servior de python en nvim
vim.cmd[[
let g:python3_host_prog = '/usr/bin/python3.9'
]]
