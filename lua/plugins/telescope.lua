return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-lua/popup.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    {"nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  event = "VeryLazy",
  config = function()
    require('telescope').setup {
    extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
      }
     }
    require('telescope').load_extension('fzf')
    require("telescope").load_extension('file_browser')

    end,
}
