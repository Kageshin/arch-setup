-- Fallback colorscheme when truecolor support is missing
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if not vim.opt.termguicolors then
            vim.cmd("colorscheme vim")
        end
    end,
})
