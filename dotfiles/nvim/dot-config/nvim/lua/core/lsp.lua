-- Enable the LSP server
vim.lsp.enable({
    "lua_ls",
    "ansiblels",
    "bashls"
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
    end,
})

vim.cmd("set completeopt+=noselect")

vim.diagnostic.config({
    virtial_lines = { prefix = "o", source = "if_many" },
    float = { border = "rounded", source = "always" },
    signs = true,
    underline = true,
    severity_sort = true,
})
