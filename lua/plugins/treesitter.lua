return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-refactor",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"css",
				"go",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"rust",
				"typescript",
				"tsx",
				"vim",
				"yaml",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			indent = {
				enable = true,
			},
						incremental_selection = {
				enable = false,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			refactor = {
				highlight_definitions = { enable = true },
				smart_rename = {
					enable = false,
					keymaps = {
						smart_rename = "trr",
					},
				},
			},
		})
	end,
}
