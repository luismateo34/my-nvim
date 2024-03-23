local ls = require("luasnip")
local snip = ls.snippet
--local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", {
	snip({
		trig = "@switch",
		namr = "switch",
		dscr = "switch directive",
	}, fmt([[
	     @switch()
		      {}
       @default
			  	{}
       @endswitch
	]],
   { 
		 insert(0),
			insert(1),

		}
	)),
snip({
  trig = "@case",
  namr = "case",
  dscr = "case directive",
	}, fmt([[
       @case()
			  {}
      @break
	]],
	{
   insert(1)
	}
	))
})
