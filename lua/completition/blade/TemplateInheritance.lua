local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
 

ls.add_snippets("blade", {
   snip({
     trig = "@extend",
     namr = "extend",
     dscr = "When defining a child view, use the @extends Blade directive to specify which layout the child view should inherit"
		 },
    text("@extend")
     ),
   snip({
    trig = "@section",
    namr = "section",
    dscr = "Views which extend a Blade layout may inject content into the layout's sections using @section directives"
     },
     fmt([[
      @section()
         {}
      @endsection
       ]],
      {
        insert(1)
      }
       )),
   snip({
   trig = "@yield",
   namr = "yield",
   dscr = "Remember, as seen in the example above, the contents of these sections will be displayed in the layout using @yield:"
     },
   text("@yield")
     )

	})
