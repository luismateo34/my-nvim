local ls = require("luasnip")
local snip = ls.snippet
--local node = ls.snippet_node
local text = ls.text_node
--local insert = ls.insert_node


ls.add_snippets("blade", {
	snip({
		trig = "@class",
		namr = "class",
		dscr = " class conditional html ",
	}, text("@class([])")),
	snip({
			trig = "@style",
			namr = "style",
			dscr = "style conditional "
		},
		text("@style([ ])")
	)
})
