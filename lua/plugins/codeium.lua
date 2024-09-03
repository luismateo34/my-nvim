return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	ft = { "blade", "typescript", "javascript", "typescriptreact", "javascriptreact", "php", "go", "python" },
	config = function()
		require("codeium").setup({
		})
	end
}
