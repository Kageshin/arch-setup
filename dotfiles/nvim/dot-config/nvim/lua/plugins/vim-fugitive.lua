local function keymaps()
    return {
        {
            "<leader>gs",
            function() vim.cmd.Git() end,
            mode = "n",
            desc = "Git status (fugitive)",
        },
    }
end

return {
    "tpope/vim-fugitive",
    lazy = true,
    keys = keymaps(),
}
