vim.opt.compatible = false

local indent = 2
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.shiftwidth = indent
vim.opt.foldmethod = 'indent'

vim.opt.expandtab = true
vim.opt.number = false
vim.opt.cursorline = true
vim.opt.hlsearch = true
vim.opt.wildmode = 'list:longest'
vim.opt.scrolloff = 4
vim.opt.backupdir = '/tmp'
vim.opt.directory = '/tmp'
vim.opt.foldmethod = 'marker'
vim.opt.backspace = 'indent,eol,start'
vim.opt.redrawtime = 100000

vim.opt.termguicolors = true
vim.g.colors_name = "dracula"
vim.cmd 'colorscheme dracula'
vim.cmd 'autocmd BufRead,BufNewFile *.ex,*.exs,mix.lock set filetype=elixir'
-- vim.cmd [[
--   autocmd DiagnosticChanged * lua vim.diagnostic.setqflist()
-- ]]

-- LSP settings
require("mason").setup()
require("mason-lspconfig").setup()

vim.o.completeopt = 'menuone,noselect'

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = false,
  update_in_insert = true,
  severity_sort = false,
})

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item()),
    ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item()),
    ['<Tab>'] = cmp.mapping(cmp.mapping.confirm({select = true}), { 'i' }),
    ['<CR>'] = cmp.mapping({
      i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
      c = function(fallback) 
        if cmp.visible() then
          cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
        else
          fallback()
        end
      end
    }),

  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer', opttion = {
      get_bufnrs = function()
        return vim.api.nvim_list_bufs()
      end
    },
    },
  },
}
