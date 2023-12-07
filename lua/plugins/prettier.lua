return {
	"MunifTanjim/prettier.nvim",
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
		require("lsp.prettier")
	end,
}
