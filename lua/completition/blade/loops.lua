local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("blade", { 
    snip({
		trig = "@for",
		namr = "for",
		dscr = "for  directive",
			},fmt([[
        @for ()
		       {}
        @endfor
			]],
      {
			insert(1),
		  }
			)),
		snip({
    trig = "@foreach",
		namr = "foreach",
		dscr = "foreach",
			}, fmt([[
         @foreach ()
			   	   {}
         @endforeach
				]],
       {
      insert(1)
			 }
				)),
			snip({
      trig = "@forelse",
			namr = "forelse",
      dscr = "forelse",
				}, fmt([[
           @forelse ()
					   {}
           @endforelse
				]],{
        insert(1)
						}
				)),
			snip({
     trig = "@while",
		 namr = "while",
		 dscr = "while",
				}, fmt([[
          @while ()
					    {}
          @endwhile
					]],
        {
      insert(1)
				}
					)),
snip({
		trig = "@continue",
		namr = "continue",
		dscr = " directive loop continue",
	}, text("@continue")
	),
snip({
		trig = "@break",
		namr = "break",
		dscr = " directive loop break",
	}, text("@break")
	)
	})
