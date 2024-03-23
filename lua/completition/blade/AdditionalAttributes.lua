local ls = require("luasnip")
local snip = ls.snippet
--local insert = ls.insert_node
--local fmt = require("luasnip.extras.fmt").fmt
local text = ls.text_node

ls.add_snippets("blade", {
	snip({
		trig = "@checked",
		namr = "checked",
		dscr = "For convenience, you may use the @checked directive to easily indicate if a given HTML checkbox input is checked. This directive will echo checked if the provided condition evaluates to true",
	}, text("@checked(old('active', $user->active))")
	),
snip({
  trig = "@selected",
	namr = "selected",
	dscr = "Likewise, the @selected directive may be used to indicate if a given select option should be selected"
	},
  text("@selected(old('version') == $version)")
	),
snip({
  trig = "@disabled",
	namr = "disabled",
	dscr = "the @disabled directive may be used to indicate if a given element should be disabled"
		},
  text("@disabled($errors->isNotEmpty())")
		),
snip({
  trig = "@readonly",
	namr = "readonly",
	dscr = "directive may be used to indicate if a given element should be readonly",
		}, 
  text("@readonly($user->isNotAdmin())") 
		),
snip({
  trig = "@required",
	namr = "required",
  dscr = "he @required directive may be used to indicate if a given element should be required",
	},
text("@required($user->isAdmin())")
	)

	})
