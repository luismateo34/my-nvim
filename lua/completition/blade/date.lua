local ls = require("luasnip")
local snip = ls.snippet
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", {
	 snip({
    trig = "@verbatim",
    namr = "verbatim",
		dscr = "directive so that you do not have to prefix each Blade echo statement with an @ symbol"
	},fmt([[
  @verbatim
	   {}
	@endverbatim
	 ]],
 {insert(1),}
	))
	})
