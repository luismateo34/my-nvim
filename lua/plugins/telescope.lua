return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-lua/popup.nvim" },
		{ "kyazdani42/nvim-web-devicons" },
		{ "nvim-telescope/telescope-file-browser.nvim" },

	},
	event = "VeryLazy",
	config = function()
		require("telescope").load_extension "file_browser"
	end,
}
