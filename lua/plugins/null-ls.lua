return {
	"jose-elias-alvarez/null-ls.nvim",
	event = "BufReadPre",
	dependencies = { "mason.nvim" },
	opts = function()
		local nls = require("null-ls")
		return {
			sources = {
				nls.builtins.formatting.stylua,
				nls.builtins.diagnostics.flake8,
				--nls.builtins.diagnostics.eslint,
				--nls.builtins.diagnostics.dotenv_linter,
				nls.builtins.diagnostics.php,
				nls.builtins.formatting.phpcsfixer,
				nls.builtins.formatting.blade_formatter,
				nls.builtins.formatting.markdownlint,
			},
		}
	end,
}
