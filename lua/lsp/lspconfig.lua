local on_attach = require("lsp.attach")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local nvim_lsp = require("lspconfig")
local lsp_flags = {
	debounce_text_changes = 150,
}

local servers = {
	"cssls",
	"mdx_analyzer",
	"svelte",
	"dockerls",
	"astro",
	"pyright",
	"prismals",
	"yamlls",
	"golangci_lint_ls",
	"gopls",
	"tailwindcss",
	"jsonls",
	"volar",
	"tsserver",
}
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		flags = lsp_flags,
	})
end

--nvim_lsp.tsserver.setup{
	--init_options = {
		--plugins = {
			--{
				--name = "@vue/typescript-plugin",
				--location = "/usr/lib/node_modules/@vue/typescript-plugin",
				--languages = { "vue"},
			--},
		--},
	--},
	--filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
	--}

nvim_lsp.intelephense.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "php", "blade" },
	 files = {
								associations = { "*.php", "blade" }, -- Associating .blade.php files as well
								maxSize = 5000000,
							},
})

nvim_lsp.html.setup({
on_attach = on_attach,
capabilities = capabilities,
filetypes = {"html", "blade" },
})

--nvim_lsp.denols.setup({
--on_attach = on_attach,
--capabilities = capabilities,
--root_dir = nvim_lsp.util.root_pattern("deno.json"),

--})


------
--rust analizer config
------
--local rt = require("rust-tools")
--rt.setup({
--server = {
--on_attach = on_attach,
--capabilities = capabilities,

--},
--})
--nvim_lsp.rust_analyzer.setup({})
