-- Get Generated Tree from Treesitter Plugin and Navigate in it

return {
    "nvim-treesitter/playground",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    cmd = { "TSPlaygroundToggle", "TSHighlightCapturesUnderCursor" },
    config = function()
        require("nvim-treesitter.configs").setup({})
    end,
}
