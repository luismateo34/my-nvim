return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
		"rcarriga/nvim-dap-ui",
     "nvim-neotest/nvim-nio",
		"mxsdev/nvim-dap-vscode-js",
		"mfussenegger/nvim-dap-python",
		"leoluz/nvim-dap-go",
		"nvim-telescope/telescope-dap.nvim",
		"rcarriga/cmp-dap",
	},
	keys = { { "<leader>d", desc = " Open debug menu " } },
	config = function()
		require("dapconfig")
		local  telescope = require "telescope"
		local ok_telescope = require "telescope"
		if ok_telescope then
			telescope.load_extension("dap")
		end

		local ok_cmp = require "cmp"
		local  cmp = require "cmp"
		if ok_cmp then
			cmp.setup.filetype({ "dap-repl", "dapui_watches" }, {
				sources = cmp.config.sources({
					{ name = "dap" },
				}, {
					{ name = "buffer" },
				}),
			})
		end
	end,
}
