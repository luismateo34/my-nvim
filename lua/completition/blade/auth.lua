local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", {
	snip({
		trig = "@auth",
		namr = "auth",
		dscr = " function autentication auth (parameter is opcional)",
	}, fmt([[
              @auth()
             		{}
              @endauth
		]],
		{
   insert(1)
		}
		)),
	snip({
		trig = "@guest",
		namr = "auth",
		dscr = "function before not authentication(parameter)",
	}, fmt([[
      @guest()
		      {}
      @endguest
	 ]],
		{
			insert(1),
		}
	)),
})
