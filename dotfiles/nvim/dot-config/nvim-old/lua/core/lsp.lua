-- Enable the LSP server
vim.lsp.enable({
    "lua_ls",
    "ansiblels",
    "bashls",
    "iwes",
})

-- Set up an LspAttach autocommand to enable features based on cliennt
-- capabilities. A single autocommmand can work for multiple LSP servers!
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
        end

        -- Auto-format ("lint") on save.
        -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
                end,
            })
        end

        if client.supports_method('textDocument/codeAction') then
            vim.keymap.set("n", "<leader>m", function() vim.lsp.buf.code_action() end,
                { buffer = args.buf, desc = "lsp code action" })
        end
        if client.supports_method('textDocument/definition') then
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
                { buffer = args.buf, desc = "lsp code action" })
        end
        if client.supports_method('textDocument/hover') then
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end,
                { buffer = args.buf, desc = "lsp code action" })
        end
    end,
})

-- Better Autocomplete
vim.cmd("set completeopt+=noselect")

-- Diagnostic Config
vim.diagnostic.config({
    virtial_lines = { prefix = "o", source = "if_many" },
    float = { border = "rounded", source = "always" },
    signs = true,
    underline = true,
    severity_sort = true,
})

-- Custom Command for Listing LspCapabilities
vim.api.nvim_create_user_command("LspCapabilities", function()
    local buf = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = buf })
    for _, client in ipairs(clients) do
        print(" LSP: " .. client.name)
        print(vim.inspect(client.server_capabilities))
    end
end, {})
