local ls = require("luasnip")
local snip = ls.snippet
--local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", {
		snip({
		trig = "@hasSection",
		namr = "hasSection",
		dscr = "You may determine if a template inheritance section has content using the @hasSection directive",
	}, fmt([[
       @hasSection()
        {} 
       @endif
	]],
   {
			insert(1),
		}
	)),
	snip({
		trig = "@sectionMissing",
		namr = "sectionMissing",
		dscr = "use the sectionMissing directive to determine if a section does not have content",
	}, fmt([[
       @sectionMissing()
			 {}
       @endif
	]],
   {
			insert(1),
		}
	))
}
)
