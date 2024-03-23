local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("blade", {
   snip({

		trig = "@csrf",
		namr = "csrf",
		dscr = "Anytime you define an HTML form in your application, you should include a hidden CSRF token field in the form so that the CSRF protection middleware can validate the request"
		 },
    text("@csrf")
		 ),
	 snip({
    trig = "@method",
		namr = "method",
		dscr = "Since HTML forms can't make PUT, PATCH, or DELETE requests, you will need to add a hidden _method field to spoof these HTTP verbs. The @method Blade directive can create this field for you"
		 },
   text("@method")
		 ),
	 snip({
    trig = "@error",
		namr = "error",
		dscr = "The @error directive may be used to quickly check if validation error messages exist for a given attribute. Within an @error directive, you may echo the $message variable to display the error message"
		 },
    fmt([[
     @error()
		 {}
     @enderror
			]],
			{
     insert(1)
			}
			)
		 ),
	 snip({
		 trig = "@push",
		 namr = "push",
		 dscr = "stack directive"
		 },
     fmt([[
      @push()
			    {}
      @endpush
			 ]],
      {
      insert(1)
			}
			 )),
snip({
		 trig = "@pushIf",
		 namr = "pushif",
		 dscr = "stack directive"
		 },
     fmt([[
      @pushIf()
			    {}
      @endPushIf
			 ]],
      {
      insert(1)
			}
			 )),
snip({
		 trig = "@prepend",
		 namr = "prepend",
		 dscr = "If you would like to prepend content onto the beginning of a stack, you should use the @prepend directive"
		 },
     fmt([[
		 @prepend()
		     {}
     @endprepend
			 ]],
      {
      insert(1)
			}
			 )),
 snip({
		trig = "@stack",
		namr = "stack",
		dscr = "You may push to a stack as many times as needed. To render the complete stack contents, pass the name of the stack to the @stack directive"
		 },
    text("@stack()")
		 )
 })
