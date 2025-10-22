require("settings.settings")
require("colorizer").setup()
require("settings.mdx")

-- configuracion del servior de python en nvim
vim.cmd [[
let g:python3_host_prog = '/usr/bin/python3'
let g:phpactorPhpBin = "/home/luis/.config/herd-lite/bin/php"
]]
