return {
  -- add gruvbox
  {
    "eddyekofo94/gruvbox-flat.nvim",

    enabled = true,

    config = function()
      vim.g.gruvbox_flat_style = "dark"
      vim.g.gruvbox_italic_comments = true
      vim.g.gruvbox_transparent = true
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-flat",
    },
  },
}
