local function keybindings()
    local builtin = require("telescope.builtin")
    return {
        {
            "<leader>pf",
            function() builtin.find_files() end,
            mode = "n",
            desc = "Telescope find files"
        },
        {
            "<C-p>",
            function() builtin.git_files() end,
            mode = "n",
            desc = "Telescope git files"
        },
        {
            "<leader>ps",
            function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end,
            mode = "n",
            desc = "Telescope grep string in files"
        },

    }
end

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = keybindings(),
    opts = function()
        return require "config.telescope"
    end,
}
