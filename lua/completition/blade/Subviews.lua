local ls = require("luasnip")
local snip = ls.snippet
--local node = ls.snippet_node
local text = ls.text_node
--local insert = ls.insert_node

ls.add_snippets("blade", {
snip({
		trig = "@include",
		namr = "include",
		dscr = " Blade's @include directive allows you to include a Blade view from within another view ",
	}, text("@include('shared.errors')")),
snip({
	trig = " @includeIf",
	namr = "includeif",
	dscr = " If you would like to include a view that may or may not be present, you should use the @includeIf directive"
	},
text("@includeIf('view.name', ['status' => 'complete'])")
	),
snip({
trig = "@includeFirst",
namr = "@includeFirst",
dscr = "To include the first view that exists from a given array of views, you may use the includeFirst directive",
	},
text("@includeFirst(['custom.admin', 'admin'], ['status' => 'complete'])")
	),
snip({
   trig = "@each",
   namr = "each",
   dscr = "You may combine loops and includes into one line with Blade's @each "
	},
 text("@each('view.name', $jobs, 'job')")
	),
snip({
  trig = "@includewhen",
	namr = "includewhen",
  dscr = " @include a view if a given boolean expression evaluates to true or false"
	},
	text("@includeWhen($boolean, 'view.name', ['status' => 'complete'])")
	),
snip({
 trig = "@includeUnless",
 namr = "includeUnless",
dscr = " @include a view if a given boolean expression evaluates to true or false"
	},
 text("@includeUnless($boolean, 'view.name', ['status' => 'complete'])")
	)
	})
