vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- use jj to exit insert mode
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("v", "ee", "<ESC>", { desc = "Exit visualinser toe with jk" })
vim.keymap.set('n', 'J', '5j', { noremap = true, desc = "Move down 5 lines" })
vim.keymap.set('n', 'K', '5k', { noremap = true, desc = "Move up 5 lines" })
-- to remove the highlighted text
vim.api.nvim_set_keymap('n', '<leader>h', ':noh<CR>', { noremap = true, silent = true })
-- Remap '9' to '$' in normal mode
vim.keymap.set('n', '9', '$', {noremap = true})

-- Remap 'd9' to 'd$' in normal mode
vim.keymap.set('n', 'd9', 'd$', {noremap = true})

