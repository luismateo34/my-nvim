local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("blade", {
	snip({
			trig = "@php",
			namr = "php",
			dscr =
			"In some situations, it's useful to embed PHP code into your views. You can use the Blade @php directive to execute a block of plain PHP within your template"
		},
		fmt([[
     @php
		  	 {}
    @endphp
			 ]],
			{
				insert(1)
			}
		)),
	snip({
			trig = "@use",
			namr = "use",
			dscr = "if you only need to use PHP to import a class, you may use the @use directive"
		},
		text("@use()")
	)
})
