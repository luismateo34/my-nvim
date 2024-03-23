local ls = require("luasnip")
local snip = ls.snippet
--local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", {
   snip({
		trig = "@production",
		namr = "production",
		dscr = "check if the application is running in the production environment ",
      }, fmt([[
              @production
                  {}
              @endproduction
         ]], {
			insert(1),
		     }
     )),
  snip({
    trig = "@env",
    namr = "env",
    descr = "you may determine if the application is running in a specific environment using the @env directive. Parameter string or array to string"
     }, fmt([[
      @env('staging')
             {}
      @endenv
     ]],
        {
       insert(1)
        }
     ))
	})
