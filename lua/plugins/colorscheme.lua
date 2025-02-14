return {
    {
        "EdenEast/nightfox.nvim",

        config = function()
            require("nightfox").setup({
                options = {
                    transparent = false,
                    dim_inactive = false,
                    colorblind = {
                        enable = true,
                        severity = {
                            protan = 0.8,
                            deutan = 0.3,
                            tritan = 0.3,
                        },
                    },
                    styles = {
                        comments = "italic",
                        strings = "italic",
                    },
                    inverse = {
                        visual = true,
                        search = true,
                    }
                },
                palettes = {
                    nightfox = {
                        whitespace = "#262626",
                        yellow = "#F0F025",
                    }
                },
                groups = {
                    nightfox = {
                        Whitespace = { bg = "palette.whitespace" },
                        Comment = { fg = "palette.yellow" },
                    }
                }
            })
        end,
    },

    -- Configure LazyVim to load nightfox
    {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "nightfox",
          --colorscheme = "dayfox",
          --colorscheme = "dawnfox",
          --colorscheme = "duskfox",
          --colorscheme = "nordfox",
          --colorscheme = "terafox",
          --colorscheme = "carbonfox",
        },
    },
}
