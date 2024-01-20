local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local tmux = require("harpoon.tmux")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>t", function()
    if vim.env.TMUX == nil then
        term.gotoTerminal(1)
    else
        tmux.gotoTerminal(1)
    end
end)
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
