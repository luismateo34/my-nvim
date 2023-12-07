return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-git",
		"onsails/lspkind-nvim", -- vscode-like pictograms
		"saadparwaiz1/cmp_luasnip",
		"onsails/lspkind-nvim",
		{ "L3MON4D3/LuaSnip", version = "v1.*" },
	},
	event = "VeryLazy",
	config = function()
		require("lsp.completition")
	end,
}
