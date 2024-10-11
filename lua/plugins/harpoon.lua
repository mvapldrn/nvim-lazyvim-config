return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  enabled = true,

  opts = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    -- Basic telescope setup
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
    end

    local keymap = vim.keymap

    keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add to Harpoon list" })
    keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpoon list" })
    keymap.set("n", "<leader>fh", function() toggle_telescope(harpoon:list()) end, { desc = "Open Harpoon list" })
    keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Go to previous file in Harpoon list" })
    keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Go to next file in Harpoon list" })
  end,
}
