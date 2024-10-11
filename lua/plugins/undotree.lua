return {
    "mbbill/undotree",

    enabled = true,

    config = function()
        vim.g.undotree_WindowLayout = 3
        vim.g.undotree_ShortIndicators = 1
    end,

    keys = {
        { "<leader>wu", "<cmd>UndotreeToggle<CR>", desc = "Open undo tree" },
    },
}
