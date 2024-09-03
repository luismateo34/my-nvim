local ls = require("luasnip")
local snip = ls.snippet
--local node = ls.snippet_node
local text = ls.text_node
--local insert = ls.insert_node


ls.add_snippets("blade", {
	snip({
			trig = "@vite",
			namr = "vite",
			dscr =
			" You may then use the @vite Blade directive in your dashboard view, specifying the CSS entrypoint for your card"
		},
		text("@vite([ ])")
	)
})
