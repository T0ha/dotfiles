vim.g.mapleader = ','

-- Hilight word in file
vim.api.nvim_set_keymap('n', '*', '*N', {noremap = true})
vim.api.nvim_set_keymap('n', '8', ':nohlsearch<CR>', {noremap = true})

-- Save by Ctrl-s
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {})
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', {})

-- Fugitive
vim.api.nvim_set_keymap('n', '<C-g>', '<Esc>:Git<CR>', {noremap = true})

-- Nerdtree
vim.api.nvim_set_keymap('n', '<C-n>', '<Esc>:NvimTreeToggle<CR>', {noremap = true})
