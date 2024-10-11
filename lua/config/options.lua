-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local opt = vim.opt

-- Don't like autoformatting
vim.g.autoformat = false

-- Show folds even when open
vim.g.lazyvim_statuscolumn = {
  folds_open = true,
}

opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = "",
  foldsep = " ",
  eob = "~"
}

opt.wrap = false

opt.autowrite = false

opt.linebreak = false

opt.shiftwidth = 4
opt.tabstop = 4



