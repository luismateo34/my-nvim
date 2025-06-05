vim.g.mapleader = " "
--line number
vim.opt.number = true
vim.opt.relativenumber = true
--Mouse option
vim.opt.mouse = "a"
--ident
vim.opt.autoindent = true
vim.opt.smartindent = true
--//
vim.g.snippets = "luasnip"
vim.opt.numberwidth = 1
vim.opt.syntax = "on"
-- Search settings
vim.opt.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
-- Scrolling
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4
--
vim.cmd("filetype plugin on")
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
vim.opt.showmatch = true
vim.opt.termguicolors = true
vim.opt.sw = 2
vim.cmd("set colorcolumn=90")
vim.o.clipboard = "unnamedplus" -- install xclip para que funciones
vim.opt.hidden = true
vim.opt.laststatus = 2
vim.opt.cmdheight = 1
vim.opt.updatetime = 300
vim.cmd("set shortmess+=c")
vim.cmd("set signcolumn=yes")
vim.cmd("set diffopt+=vertical")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
--vim.tbl_add_reverse_lookup

-- color settings
require('onedark').load()
--vim.cmd("colorscheme tokyonight-moon")
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})
