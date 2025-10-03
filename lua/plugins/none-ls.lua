return {
	"nvimtools/none-ls.nvim",
	event = "BufReadPre",
	dependencies = { "mason.nvim" },
	opt = function()
		local null_ls = require("none-ls"),
				null_ls.setup({
					sources = {
						null_ls.builtins.formatting.stylua,
						null_ls.builtins.formatting.prettier,
						--null_ls.builtins.diagnostics.php,
						null_ls.builtins.diagnostics.phpcs,
						null_ls.builtins.formatting.phpcsfixer,
						null_ls.builtins.formatting.blade_formatter,
						null_ls.builtins.formatting.prettier,
						null_ls.builtins.formatting.markdownlint,
						null_ls.builtins.diagnostics.golangci_lint,
						--null_ls.builtins.formatting.sql_formatter,
					},
				})
	end
}
