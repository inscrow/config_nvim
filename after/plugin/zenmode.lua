local zen = require('zen-mode')
zen.setup {
    window = {
        options = {
            -- hide unuseful ui
            number = false,
            relativenumber = false,
            signcolumn = "no",
            list = false,
            cursorline = false,
        },
    },
}

vim.keymap.set('n', '<leader>zz', zen.toggle, {})
