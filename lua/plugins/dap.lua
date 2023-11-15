return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
		"rcarriga/nvim-dap-ui",
		"mxsdev/nvim-dap-vscode-js",
		"mfussenegger/nvim-dap-python",
		"leoluz/nvim-dap-go",
		"anuvyklack/hydra.nvim",
		"nvim-telescope/telescope-dap.nvim",
		"rcarriga/cmp-dap",
	},
	keys = { { "<leader>d" } },
	config = function()
		require("dapconfig.init")
		local ok_telescope, telescope = pcall(require, "telescope")
		if ok_telescope then
			telescope.load_extension("dap")
		end

		local ok_cmp, cmp = pcall(require, "cmp")
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
