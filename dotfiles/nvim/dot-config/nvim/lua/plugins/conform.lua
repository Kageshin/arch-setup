return {
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format({ lsp_format = "fallback" })
            end,
            desc = "Format Current File",
        },
    },
    opts = {
        formatters_by_ft = {
            -- Multible Formatters can be called in series
            -- stop_after_first = true can be used to stop after first available formatter
            lua = { "stylua" },
            sh = { "shfmt" },
        },
        format_on_save = {
            -- If formatting takes longer than this time abort formatting
            timeout_ms = 500,
            -- Fallback to LSP Formatting if no formatter is found
            lsp_format = "fallback",
        },
    },
}
