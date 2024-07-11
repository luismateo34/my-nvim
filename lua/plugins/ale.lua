return {
	"dense-analysis/ale",
	ft = { "javascript", "typescript", "javascriptreact", "typescriptreact", "astro", "svelte", "vue" },
	config = function()
		-- Configuration goes here.
		local g                          = vim.g
		g.ale_use_neovim_diagnostics_api = 1
		g.ale_disable_lsp                = 1

		g.ale_compion_autoimport         = 0
		g.ale_compion_enabled            = 0
		g.ale_linters_explicit           = 1

		g.ale_fix_on_save                = 1
		g.ale_lint_on_save               = 1


		g.ale_linter_aliases = {
			vue = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact' },
			svelte = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact' },
			astro = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact' },
		}


		g.ale_linters = {
			lua             = { 'lua_language_server' },
			javascript      = { 'eslint' },
			typescript      = { 'eslint' },
			javascriptreact = { 'eslint' },
			typescriptreact = { 'eslint' },
			svelte          = { 'eslint' },
			vue             = { 'eslint' },
			astro           = { 'eslint' },

		}
	end
}
