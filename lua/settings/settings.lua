vim.g.mapleader = " "
vim.g.snippets = "luasnip"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.numberwidth = 1
vim.opt.syntax = "on"
vim.cmd("filetype plugin on")
vim.opt.showcmd = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
vim.opt.showmatch = true
vim.opt.termguicolors = true
vim.opt.sw = 2
vim.cmd("set colorcolumn=90")
vim.opt.clipboard = "unnamedplus"
vim.opt.hidden = true
vim.opt.laststatus = 2
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cmdheight = 1
vim.opt.updatetime = 300
vim.cmd("set shortmess+=c")
vim.cmd("set signcolumn=yes")
vim.cmd("set diffopt+=vertical")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
vim.cmd("colorscheme tokyonight-moon")
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})
