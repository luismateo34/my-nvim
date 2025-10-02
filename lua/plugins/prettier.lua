return {
	"MunifTanjim/prettier.nvim",

	dependencies = {
		'neovim/nvim-lspconfig',
	},
	ft = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"astro",
		"yaml",
		"svelte",
	},
	cmd = { "Prettier" },
	config = function()
		require("settings.prettier")
	end,
}
