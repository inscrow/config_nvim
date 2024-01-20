vim.o.termguicolors = true

vim.api.nvim_create_autocmd('Colorscheme', {
	pattern = "nofrils-light",
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

require('rose-pine').setup({
    disable_background = true
})

-- vim.o.background = 'light'
vim.cmd.colorscheme "catppuccin"
