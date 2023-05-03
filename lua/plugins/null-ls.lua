return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim",	
                   "MunifTanjim/prettier.nvim",
 },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.prettier,
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.flake8,
        nls.builtins.diagnostics.eslint_d.with({
        -- ignore prettier warnings from eslint-plugin-prettier
        filter = function(diagnostic)
            return diagnostic.code ~= "prettier/prettier"
        end,
        }),
      },
    }
  end,
}
