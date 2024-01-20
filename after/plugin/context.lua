require'treesitter-context'.setup{
  enable = true,
  max_lines = 0,
  min_window_height = 0,
  line_numbers = true,
}

-- make context more visible
vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, sp = "grey" })
vim.o.scrolloff = 5
