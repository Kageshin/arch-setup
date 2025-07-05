-- Highlight yanked Content
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
    pattern = "*",
    callback = function()
        vim.hl.on_yank()
    end,
    desc = "Highlight yank",
})
