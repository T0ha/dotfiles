vim.g.mapleader = ','

-- Hilight word in file
vim.api.nvim_set_keymap('n', '*', '*N', {noremap = true})
vim.api.nvim_set_keymap('n', '8', ':nohlsearch<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {})
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', {})
