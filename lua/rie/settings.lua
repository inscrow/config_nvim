-- 4 spaces tabs, converted to spaces
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- disable mouse
vim.o.mouse = false

-- numbers
vim.o.number = true
vim.o.relativenumber = true

-- disable numbers in terminal mode
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    command = "setlocal nonumber norelativenumber"
})

-- block cursor
vim.o.guicursor = ""

-- no soft wrapping
vim.o.wrap = false

-- search
vim.o.hlsearch = false
vim.o.incsearch = true

-- 2 space indentation in java code
vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})

-- netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
