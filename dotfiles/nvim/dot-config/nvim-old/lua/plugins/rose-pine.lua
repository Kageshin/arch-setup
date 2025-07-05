-- Custom Theme Rose-Pine,

return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    enabled = vim.fn.exists('+termguicolors') == 1,

    config = function()
        vim.o.termguicolors = true

        -- Setup mit Standartparametern
        require("rose-pine").setup({
        })

        vim.cmd("colorscheme rose-pine")
    end
}
