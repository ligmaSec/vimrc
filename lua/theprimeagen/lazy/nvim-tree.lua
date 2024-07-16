return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {}
        local api = require "nvim-tree.api"
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, noremap = true, silent = true, nowait = true }
        end


        -- custom mappings
        vim.keymap.set('n', '<leader>/', api.tree.toggle, opts('Help'))
    end,
}
