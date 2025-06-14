-- Fallback colorscheme when truecolor support is missing
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		if vim.fn.has("termguicolors") == 1 then
			vim.cmd("colorscheme vim")
		end
	end,
})
