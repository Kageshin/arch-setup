return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git", ".luarc.json", ".luarc.jsonc", "lazy-lock.json" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = {
                    'lua/?.lua',
                    'lua/?/init.lua',
                },
            },
            diagnostics = { globals = { "vim" } },
            workspace = {
                libary = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                    vim.fn.stdpath("config"),
                },
                checkThirdParty = false,
            },
            completion = { callSnippet = "Replace" },
        },
    },

    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}
