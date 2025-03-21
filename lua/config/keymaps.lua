-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap

-- Moving through windows
keymap.set("n", "<S-Left>",  "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<S-Right>", "<C-w>l", { desc = "Go to Right Window" })
keymap.set("n", "<S-Up>",    "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<S-Down>",  "<C-w>j", { desc = "Go to Lower Window" })
keymap.del("n", "<leader><tab>l")
keymap.del("n", "<leader><tab>o")
keymap.del("n", "<leader><tab>f")
keymap.del("n", "<leader><tab><tab>")
keymap.del("n", "<leader><tab>]")
keymap.del("n", "<leader><tab>d")
keymap.del("n", "<leader><tab>[")

-- Moving through buffers (tabs)
keymap.set("n", "<C-Left>",  "<cmd>bprevious<CR>", { desc = "Go to Previous buffer/tab" })
keymap.set("n", "<C-Right>", "<cmd>bnext<CR>", { desc = "Go to Next buffer/tab" })
keymap.del("n", "[b")
keymap.del("n", "[B")
keymap.del("n", "]b")
keymap.del("n", "]B")
keymap.del("n", "<S-h>")
keymap.del("n", "<S-l>")

-- Get rid of these short-cuts because I don't use them and they clutter which-key
keymap.del("n", "<leader>-")
keymap.del("n", "<leader>|")
keymap.del("n", "<leader>/")
keymap.del("n", "<leader>,")
keymap.del("n", "<leader>`")

keymap.del("n", "<leader>1")
keymap.del("n", "<leader>2")
keymap.del("n", "<leader>3")
keymap.del("n", "<leader>4")
keymap.del("n", "<leader>5")
keymap.del("n", "<leader>h")
keymap.del("n", "<leader>H")

keymap.del("n", "gcO")
keymap.del("n", "gco")
keymap.del("n", "gcc")

keymap.del("n", "<leader>l")
keymap.del("n", "<leader>L")
keymap.del("n", "<leader>.")
keymap.del("n", "<leader>bD")
keymap.del("n", "<leader>be")
keymap.del("n", "<leader>bl")
keymap.del("n", "<leader>bo")
keymap.del("n", "<leader>bp")
keymap.del("n", "<leader>bP")
keymap.del("n", "<leader>br")



-- keymap.set("n", "<leader>h", { group = "Harpoon" } )
keymap.set("n", "<leader>ha", function() require("harpoon"):list():add() end, { desc = "Harpoon add file"})
keymap.set("n", "<leader>hH", function()
    local harpoon = require("harpoon")
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Quick Menu"})
keymap.set("n", "<leader>h1", function() require("harpoon"):list():select(1) end, { desc = "Harpoon to file 1"})
keymap.set("n", "<leader>h2", function() require("harpoon"):list():select(2) end, { desc = "Harpoon to file 2"})
keymap.set("n", "<leader>h3", function() require("harpoon"):list():select(3) end, { desc = "Harpoon to file 3"})
keymap.set("n", "<leader>h4", function() require("harpoon"):list():select(4) end, { desc = "Harpoon to file 4"})
keymap.set("n", "<leader>h5", function() require("harpoon"):list():select(5) end, { desc = "Harpoon to file 5"})


-- When moving half pages, havce cursor in the middle
keymap.set("n", "<C-Down>", "nzzzv")
keymap.set("n", "<C-Up>", "Nzzzv")

-- When searching for next searchitem, stay in the middle
keymap.set("n", "n", "nzzzv", { desc = "Next searchitem" })
keymap.set("n", "N", "Nzzzv", {desc = "Prev searcjitem" })

-- Yank to system clipboard
keymap.set("n", "<leader>y", "\"+y", {desc = "Yank to system clipboard" })
keymap.set("v", "<leader>y", "\"+y", {desc = "Yank to system clipboard" })
keymap.set("n", "<leader>Y", "\"+Y", {desc = "Yank to system clipboard" })

-- Select visualblock , then use Shift arrow to move visual block
keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- Don't go to end of line when Joining
keymap.set("n", "J", "mzJ'z")

-- TMUX
-- keymap.set("n", "<leader>t", "<cmd>silent !tmux neww tmux-sessionizer<CR>", {desc = "Something TMUX" })

-- Quickfix navigation
-- keymap.set("n", "<S-Down>", "<cmd>cnext<CR>zz")
-- keymap.set("n", "<S-Up>", "<cmd>cprev<CR>zz")
-- keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- My vim function keys
keymap.set("n", "<F1>", function()
    require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
end, { desc = "Open File Explorer in Root Dir"} )
keymap.set("n", "<S-F1>", function()
    require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
end, { desc = "Open File Explorer in cwd"} )
keymap.set("n", "<F2>", "<cmd>Trouble symbols toggle<CR>", { desc = "Symbols (Trouble)"} )
keymap.set("n", "<F4>", LazyVim.pick("live_grep"), { desc = "Grep in root dir"} )
keymap.set("n", "<F5>", "<cmd>make<CR>", { desc = "Start make in pwd"} )
keymap.set("n", "<F6>", "<cmd>Trouble qflist toggle<CR>", { desc = "Make/Quickfix list"} )

