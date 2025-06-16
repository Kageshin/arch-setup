-- Generate Tree about code for Higlighting and Navigation

return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    opts = function()
        return require "config.treesitter"
    end,
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
