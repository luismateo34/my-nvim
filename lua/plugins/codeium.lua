return {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    ft = { "blade",},
    config = function()
        require("codeium").setup({
        })
    end
}

