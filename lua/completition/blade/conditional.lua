local ls = require("luasnip")
local snip = ls.snippet
--local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("blade", {
	snip({
		trig = "@if",
		namr = "if",
		dscr = " directive conditional if",
	}, fmt(
		[[
          @if()
             {}
          @endif
    ]],
		{
			insert(1),
		}
	)),
	snip({
		trig = "@else",
		namr = "else",
		dscr = " directive conditional else",
	}, text("@else")
	),
	snip({
		trig = "@elseif",
		namr = "elseif",
		dscr = " directive conditional elseif",
	}, text("@elseif")
	),
	snip({
		trig = "@unless",
		namr = "unless",
		discr = "Alternative to the conditional if",
	}, fmt([[
         @unless ()
	           {}
         @endunless
	       ]],
		{ insert(1), }
	)),
	snip({
		trig = "@isset",
		namr = "isset",
		dscr = "function isset directive",
	}, fmt([[
            @isset()
		{}
            @endisset
		]],
		{ insert(1), }
	)),
	snip({
		trig = "@empty",
		name = "empty",
		dscr = "directive of the function empty"
	}, fmt([[
           @empty()
          		{}
           @endempty
	]],
		{ insert(0), }
	))
}
)



--ls.add_snippets("blade", {
--snip("@verbatim", {
--}--trig = "date",
--namr = "verbatim",
--dscr = " directive so that you do not have to prefix each Blade echo statement with an @ symbol",
--text({ "@verbatim",
--"",
--""
--}),
--insert(1),
--text('@endverbatim'),
--}
--)
--}
--)
