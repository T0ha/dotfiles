-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme plugin
    use 'Mofiqul/dracula.nvim'
    use 'navarasu/onedark.nvim'

  -- Git warper
  -- use 'tpope/vim-fugitive'

  use 'kdheepak/lazygit.nvim'

  -- Tabs
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    tag = "*",
    config = function()
      require("bufferline").setup{}
    end
  }

  -- Bottom line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup()
    end
  }


  -- LSP plugins
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  })

  use {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end
  }

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- PopUps
  use 'nvim-lua/popup.nvim'

  -- Fuzzy
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  use {"Djancyp/cheat-sheet"}

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() 
      require'nvim-tree'.setup({
        disable_netrw       = true,
        hijack_netrw        = true,
        open_on_setup       = false,
        ignore_ft_on_setup  = {},
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
          hide_root_folder = false,
          side = 'left',
          adaptive_size = false,
          mappings = {
            custom_only = false,
            list = {
              -- {key = "z", cb = tree_cb("edit") },
            }
          }
        }
      })
    end
  }

  -- TreeSitter plugins
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use "Djancyp/better-comments.nvim"

  -- Surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- Plugin setup
  require('better-comment').Setup()
  require('onedark').setup {
    style = 'darker'
  }
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
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
  require('telescope').setup({
    defaults = {
      layout_strategy = 'vertical',
      layout_config = {
        vertical = {
          width = 0.90
        }
      }
    }
  })
end)
