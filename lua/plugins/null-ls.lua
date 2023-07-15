return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = { "mason.nvim", "nvim-lua/plenary.nvim" },
	event = "BufReadPre",
	opts = function()
		local nls = require("null-ls")
		return {
			sources = {
				nls.builtins.formatting.stylua.with({
					filetypes = { "lua" },
				}),
				nls.builtins.diagnostics.flake8,
				--nls.builtins.diagnostics.eslint,
				--nls.builtins.diagnostics.eslint.with({
				---- ignore prettier warnings from eslint-plugin-prettier
				--	filter = function(diagnostic)
				--		return diagnostic.code ~= "prettier/prettier"
				--	end,
				--	}),
			},
		}
	end,
}
