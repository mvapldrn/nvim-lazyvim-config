return {
    -- add gruvbox
    {
        --"eddyekofo94/gruvbox-flat.nvim",
        "scottmckendry/cyberdream.nvim",

        enabled = true,

        opts = {
            -- Enable transparent background
            transparent = false,

            -- Enable italics comments
            italic_comments = true,

            -- Replace all fillchars with ' '
            hide_fillchars = false,

            theme = {
                variant = "default",
                saturation = 0.8,
                highlights = {
                    -- Highlight groups to override, adding new groups is also possible
                    -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
                    -- Comment = {fg = "#FFFF00", bg = "NONE", italic = true }
                },

                -- Override a highlight group entirely using the color palette
                overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
                    -- Example:
                    return {
                        Comment = { fg = colors.yellow, bg = "NONE", italic = true },
                        Type = { fg = colors.white, bg = "NONE", italic = true },
                        Function = { fg = colors.white, bg = "NONE", bold = true },
                        Operator = { fg = colors.white, bg = "NONE" },
                        Constant = { fg = colors.green, bg = "NONE", bold = true },
                        Macro = { link = "Constant" },
                        ErrorMsg = { fg = colors.white, bg = colors.red, bold = true },
                        WindowBackground = { bg = colors.bgAlt },
                        NotifyBackground = { link = "WindowBackground" },
                        BufferLineBackground = { link = "WindowBackground" },
                        NormalFloat = { fg=colors.yellow, bg = colors.bgAlt },
                        FloatTitle = { fg=colors.orange, bg = colors.bgAlt, bold = true },
                        FloatBorder = { fg=colors.orange, bg = colors.bgAlt },
                        FlashBackdrop = { fg=colors.bgAlt },

                        ["@type.builtin"] = { link = "Type" },
                        ["@property"] = { fg = colors.white, bold = false },
                    }
                end,     

                -- Override a color entirely
                colors = {
                    -- For a list of colors see `lua/cyberdream/colours.lua`
                    -- Example:
                    bg = "#303030",
                    bgAlt = "#1E2124",
                    bgHighlight = "#3C4048",
                    fg = "#FFFFFF",
                    grey = "#7B8496",
                    blue = "#5EA1FF",
                    green = "#5EFF6C",
                    cyan = "#5EF1FF",
                    red = "#FF6E5E",
                    yellow = "#FFFF40",
                    magenta = "#FF5EF1",
                    pink = "#FF5EA0",
                    orange = "#FFBD5E",
                    purple = "#BD5EFF",
                },
            }
        }
    },

    -- Configure LazyVim to load cyberdream
    {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "cyberdream",
        },
    },
}
