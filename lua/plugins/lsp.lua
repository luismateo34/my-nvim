return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"williamboman/mason.nvim",
			opts = {
				ui = {
					border = "rounded",
				},
			},
		},
		{
			'glepnir/lspsaga.nvim', -- LSP UIs
			config = function()
				require("lspsaga").setup({})
			end,
			requires = {
				{ "kyazdani42/nvim-web-devicons" },
				{ "nvim-treesitter/nvim-treesitter" },

			},
		},

		"onsails/lspkind-nvim", -- vscode-like pictograms
		"hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words
		"hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim"s built-in LSP
		"hrsh7th/nvim-cmp", -- Completion
		"neovim/nvim-lspconfig", -- LSP
		"MunifTanjim/prettier.nvim",
		{
			"jay-babu/mason-null-ls.nvim",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = {
				"williamboman/mason.nvim",
				"jose-elias-alvarez/null-ls.nvim",
			},
		},
		"L3MON4D3/LuaSnip",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim"

	},
	--config = function()
	--end,
}
