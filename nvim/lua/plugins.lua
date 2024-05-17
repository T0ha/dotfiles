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

require('lazy').setup({
  -- Theme plugin
  {
    'Mofiqul/dracula.nvim',
    config = function()
      require('onedark').setup({
        style = 'darker'
      })
    end
  },
  'navarasu/onedark.nvim',

  -- Git
  'kdheepak/lazygit.nvim',
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  -- Tabs
  {
    'akinsho/bufferline.nvim',
    dependencies = 'kyazdani42/nvim-web-devicons',
    version = "*",
    config = function()
      require("bufferline").setup{}
    end
  },

  -- Bottom line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      {'kyazdani42/nvim-web-devicons', lazy = true}
    },
    config = function()
      require('lualine').setup()
    end
  },

  -- LSP plugins
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
  --
  {
    'simrat39/symbols-outline.nvim', 
    config = function()
      require("symbols-outline").setup()
    end
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end
  },

  -- Autocomplete
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',

  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',

  -- PopUps
  'nvim-lua/popup.nvim',

  -- Fuzzy
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require('telescope').setup({
        defaults = {
          layout_strategy = 'vertical',
          layout_config = {
            vertical = {
              width = 0.90
            }
          },
          mappings = {
            -- ["<C-w>"] = require('telescope.actions').cycle_history_next,
            -- ["<C-e>"] = require('telescope.actions').cycle_history_prev,
          }
        }
      })
    end
  },

  --
  --  use {"Djancyp/cheat-sheet"}
  --
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function() 
      require'nvim-tree'.setup({
        disable_netrw       = true,
        hijack_netrw        = true,
        open_on_tab         = false,
        hijack_cursor       = false,
        update_cwd          = false,
        hijack_directories = {
          enable = true,
          auto_open = true,
        },
        actions = {
          open_file = {
            quit_on_open = true
          },
          remove_file = {
            close_window = true,
          },
        },
        diagnostics = {
          enable = false,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          }
        },
        update_focused_file = {
          enable      = true,
          update_cwd  = false,
          ignore_list = {}
        },
        system_open = {
          cmd  = nil,
          args = {}
        },
        filters = {
          dotfiles = true,
          custom = {}
        },
        view = {
          width = 30,
          side = 'left',
          adaptive_size = false
        }
      })
    end
  },

  -- TreeSitter plugins
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()

      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          "lua",
          "erlang",
          "elixir",
          "heex",
          "elm",
          "python",
          "markdown"
        },-- one of "all", "maintained" (parsers with maintainers), or a list of languages
        sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
        ignore_install = { "javascript" }, -- List of parsers to ignore installing
        highlight = {
          enable = true,              -- false will disable the whole extension
          disable = { "c", "rust" },  -- list of language that will be disabled
          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
        indent = {
          enable = true
        }
      })
    end
  },

  {
    "Djancyp/better-comments.nvim",
    config = function()
      require('better-comment').Setup()
    end
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
})
