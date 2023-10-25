vim.o.termguicolors = true

vim.api.nvim_create_autocmd('Colorscheme', {
	pattern = "boo",
	callback = function()
		vim.api.nvim_set_hl(0, "Normal", { bg = none })
	end
})

require('gruvbox').setup {
	transparent_mode = true,
}

vim.cmd("colorscheme gruvbox")
