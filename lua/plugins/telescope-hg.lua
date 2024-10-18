return {
    "jackysee/telescope-hg.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },

    config = function()
        local ts = require("telescope")
        ts.load_extension("hg")
    end,

    keys = {
        { "<leader>mr", "<cmd>Telescope hg logthis<CR>", desc = "Show hg revisions for file" },
        { "<leader>ml", "<cmd>Telescope hg log<CR>", desc = "Show hg log" },
        { "<leader>ms", "<cmd>Telescope hg status<CR>", desc = "Show hg status" },
    }
}
