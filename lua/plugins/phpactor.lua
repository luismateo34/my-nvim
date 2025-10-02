-- Lua
return {
	"gbprod/phpactor.nvim",
	cmd = { "PhpActor" },
	dependencies = {
		"nvim-lua/plenary.nvim", -- required to update phpactor
	},
	opts = {
		install = {
			bin = vim.fn.stdpath("data") .. "/mason/bin/phpactor"
		},
		lspconfig = {
			enabled = true,
		},
	},
}
