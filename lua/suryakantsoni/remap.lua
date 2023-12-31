vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- use option + u to escape
vim.keymap.set('i', '<A-u>', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-u>', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('v', '<A-u>', '<Esc>', {noremap = true, silent = true})

vim.keymap.set('n', 'J', '5j', { noremap = true, desc = "Move down 5 lines" })
vim.keymap.set('n', 'K', '5k', { noremap = true, desc = "Move up 5 lines" })
-- to remove the highlighted text
vim.keymap.set('n', '<leader>h', ':noh<CR>', { noremap = true, silent = true })
-- Remap '9' to '$' in normal mode
vim.keymap.set('n', '9', '$', {noremap = true})

-- Remap 'd9' to 'd$' in normal mode
vim.keymap.set('n', 'd9', 'd$', {noremap = true})

--drag the selected content up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--half page jumping and the cursor remains in the middle
vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")
-- preserve the copied word for pasting in place of the other word withoverwriting clipboard 
vim.keymap.set("x", "<A-p>", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<A-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- formats the current buffer using the lsp language configured
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--loads the vim configuration by updating it
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sc", ":close<CR>") -- close current split window
-- below shortcuts are not working
-- vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- vim.keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
-- vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- run packersync
vim.keymap.set('n', '<leader>sy', ':PackerSync<CR>', { noremap = true, silent = true })

-- Paste below the current line
vim.keymap.set('n', '<leader>pd', ':put<CR>', {noremap = true, silent = true})

-- Paste above the current line
vim.keymap.set('n', '<leader>pu', ':put!<CR>', {noremap = true, silent = true})
-- nvim-tree
vim.keymap.set("n", "<leader>eo", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>") -- toggle file explorer
-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
-- telescope git commands (not on youtube nvim video)
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
