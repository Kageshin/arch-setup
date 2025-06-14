local function keybindings()
    return {
        {
            "<leader>e",
            "<cmd>NvimTreeToggle<CR>",
            mode = "n",
            desc = "nvimtree toggle window"
        },
        {
            "<C-n>",
            "<cmd>NvimTreeToggle<CR>",
            mode = "n",
            desc = "nvimtree toggle window"
        },

    }
end

return {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    keys = keybindings(),
    opts = function()
        return require "config.nvimtree"
    end,
}
