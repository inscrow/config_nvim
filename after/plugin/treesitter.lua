require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "python", "java", "lua", "vim", "vimdoc", "go" },
	highlight = {
		enable = true,
        additional_vim_regex_highlighting = false,
	},
}
