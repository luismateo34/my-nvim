local nvim_lsp = require("lspconfig")
local util = require 'lspconfig.util'

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_flags = {
	debounce_text_changes = 150,
}
local on_attach = require("lsp.attach")


nvim_lsp.phpactor.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	   cmd = { 'phpactor', 'language-server' },
	filetypes = { "php", "blade" },
	init_options = {
		["language_server_worse_reflection.inlay_hints.enable"] = true,
		["language_server_worse_reflection.inlay_hints.params"] = true,
		["language_server_configuration.auto_config"] = true,
		["code_transform.import_globals"] = true,
		["php_code_sniffer.enabled"] = true,
		["php_code_sniffer.bin"] = "/home/luis/.local/share/nvim/mason/bin/phpcs",
			},
	handlers = {
		["textDocument/inlayHint"] = function(err, result, ...)
			for _, res in ipairs(result) do
				res.label = res.label .. ": "
			end
			vim.lsp.handlers["textDocument/inlayHint"](err, result, ...)
		end,
	},
	root_dir = function(pattern)
      local cwd = vim.loop.cwd()
      local root = util.root_pattern('composer.json', '.git', '.phpactor.json', '.phpactor.yml')(pattern)

      -- prefer cwd if root is a descendant
      return util.path.is_descendant(cwd, root) and cwd or root
    end,
})
