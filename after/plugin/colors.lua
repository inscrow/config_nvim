vim.o.termguicolors = true

vim.api.nvim_create_autocmd('Colorscheme', {
	pattern = "boo",
	callback = function()
		vim.api.nvim_set_hl(0, "Normal", { bg = nil })
	end
})

require('gruvbox').setup {
	transparent_mode = true,
}

require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	integrations = {
		cmp = true,
		treesitter = true,
	},
})

vim.cmd.colorscheme "catppuccin"
