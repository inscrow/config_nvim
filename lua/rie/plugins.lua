local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({

	-- Colorschemes
	"rockerBOO/boo-colorscheme-nvim",
	"ellisonleao/gruvbox.nvim",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},

	-- LSP plugins
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- Tmux navigator
	"christoomey/vim-tmux-navigator",

	-- Vim sensible
	"tpope/vim-sensible",

	-- Statusbar
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons"
	},

	-- Harpoon
	{
		"ThePrimeagen/harpoon",
		dependencies = "nvim-lua/plenary.nvim"
	},

	-- Git
	"tpope/vim-fugitive",
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },

	-- Biscuits
	{
		"code-biscuits/nvim-biscuits",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},

    -- Over length
    "lcheylus/overlength.nvim",

    -- javascript better syntax
    "pangloss/vim-javascript",
})
