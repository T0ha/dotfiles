vim.opt.compatible = false

local indent = 2
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.shiftwidth = indent

vim.g.colors_name = "desert"
vim.opt.expandtab = true
vim.opt.number = false
vim.opt.hlsearch = true
vim.opt.wildmode = 'list:longest'
vim.opt.scrolloff = 4
vim.opt.backupdir = '/tmp'
vim.opt.directory = '/tmp'
vim.opt.foldmethod = 'marker'
vim.opt.backspace = 'indent,eol,start'
vim.opt.redrawtime = 100000

vim.cmd 'autocmd BufRead,BufNewFile *.ex,*.exs,mix.lock set filetype=elixir'
