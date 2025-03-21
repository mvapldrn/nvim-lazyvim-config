-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- Don't like autoformatting
vim.g.autoformat = false

-- Show folds even when open
vim.g.lazyvim_statuscolumn = {
  folds_open = true,
}

vim.g.c_space_errors = 1
vim.g.c_min_lines = 100
vim.g.c_syntax_for_h = 1
vim.g.c_no_comment_fold = 1

local opt = vim.opt

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

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.hlsearch = true
opt.incsearch = true

opt.scrolloff = 8

opt.guicursor = ""

opt.updatetime = 50

opt.colorcolumn = "80"



