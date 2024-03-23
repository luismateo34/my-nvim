local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", {
    snip({
        trig = "@inject",
        namr = "inject",
        dscr = "The @inject directive may be used to retrieve a service from the Laravel service container. The first argument passed to @inject is the name of the variable the service will be placed into, while the second argument is the class or interface name of the service you wish to resolve"
			},
   text("@inject()")
      ),
    snip({
      trig = "@fragment",
      namr = "fragment",
      dscr = "When using frontend frameworks such as Turbo and htmx, you may occasionally need to only return a portion of a Blade template within your HTTP response. Blade fragments allow you to do just that. To get started, place a portion of your Blade template within @fragment and @endfragment directives"
        },
     fmt([[
    @fragment()
         {}
    @endfragment
         ]],
        {
      insert(1)
        }
         ))
	})
