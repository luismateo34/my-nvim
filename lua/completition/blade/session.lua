local ls = require("luasnip")
local snip = ls.snippet
--local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("blade", {
		snip({
		trig = "@session",
		namr = "session",
		dscr = "The @session directive may be used to determine if a session value exists",
	}, fmt([[
 	    @session()
	          {}
      @endsession
	]],
   {
			insert(1),
	 }
	))
})
