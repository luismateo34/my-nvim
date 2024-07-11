require("settings.settings")
require("colorizer").setup()
require("settings.ultisnips")
require("settings.mdx")
require("settings.test")

-- configuracion del servior de python en nvim
vim.cmd[[
let g:python3_host_prog = '/usr/bin/python3.11'
let g:phpactorPhpBin = "/usr/bin/php8.3"
]]

