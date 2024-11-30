-- Lua
return {
	"gbprod/phpactor.nvim",
	cmd = { "PhpActor" },
	dependencies = {
		"nvim-lua/plenary.nvim", -- required to update phpactor
		"neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
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
