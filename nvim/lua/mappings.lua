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

-- Tabs
vim.api.nvim_set_keymap('n', '<C-j>', ':BufferLineCyclePrev<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', ':BufferLineCycleNext<CR>', {noremap = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope live_grep<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-b>', ':Telescope buffers<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-h>', ':Telescope help_tags<CR>', {noremap = true})
