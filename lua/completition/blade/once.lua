local ls = require("luasnip")
local snip = ls.snippet
--local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("blade", {
		snip({
		trig = "@once",
		namr = "once",
		dscr = "The @once directive allows you to define a portion of the template that will only be evaluated once per rendering cycle",
	}, fmt([[
	 @once
	    {}
   @endonce
	]],
   {
			insert(1),
	 }
	)),
snip({
  trig = "@pushOnce",
	namr = "pushOnce",
	dscr = "The @pushOnce directive allows you to define a portion of the template that will only be evaluated once per rendering cycle"
	}, fmt([[
      @pushOnce()
			      {}
     @endPushOnce
		]],
   {
    insert(1)
	 }
		))
})
