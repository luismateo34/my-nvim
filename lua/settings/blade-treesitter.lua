local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
	install_info = {
		url = "https://github.com/EmranMR/tree-sitter-blade",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "blade",
}

vim.filetype.add({
	extension = {
		blade = "blade",
	},
})
vim.treesitter.language.register("blade.php", "blade")
        require("nvim-treesitter.configs")


