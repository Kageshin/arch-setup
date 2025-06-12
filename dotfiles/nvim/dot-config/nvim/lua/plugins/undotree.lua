return {
	"mbbill/undotree",
	lazy = true,
	keys = {
		{
			"<leader>u",
			function() vim.cmd.UndotreeToggle() end,
			mode = "n",
			desc = "Toggle UndoTree",
		},
	},
	config = function()
		vim.cmd([[
			let g:undotree_WindowLayout = 2
			let g:undotree_splitWidth = 30
			let g:undotree_SetFocusWhenToggle = 1
			]])
		vim.opt.undofile = true
		vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
	end,
}
