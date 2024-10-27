return {
    {
        "EdenEast/nightfox.nvim",

        config = function()
            require("nightfox").setup({
                options = {
                    transparent = false,
                    dim_inactive = false,
                    styles = {
                        comments = "italic",
                    }
                }
            })
        end,
    },

    -- Configure LazyVim to load nightfox
    {
        "LazyVim/LazyVim",
        opts = {
          --colorscheme = "nightfox",
          colorscheme = "dayfox",
          --colorscheme = "dawnfox",
          --colorscheme = "duskfox",
          --colorscheme = "nordfox",
          --colorscheme = "terafox",
          --colorscheme = "carbonfox",
        },
    },
}
