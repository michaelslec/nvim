local utils = require('utils')
local packer_bootstrap, packer = utils.get_or_download_packer()

packer.startup({function(use)
  use 'wbthomason/packer.nvim'
  use 'rafcamlet/nvim-luapad'
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Colorschemes
  use 'EdenEast/nightfox.nvim'
  use 'savq/melange'
  use 'sainnhe/everforest'
  use 'folke/tokyonight.nvim'

  use 'tpope/vim-vinegar'

  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup()
    end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    },
    config = function()
      local tscope = require('telescope')
      tscope.setup {}
      tscope.load_extension('fzf')
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = "maintained",
        highlight = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      }
    end
  }


  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup {
        current_line_blame = true,
        current_line_blame_formatter_opts = {
          relative_time = true
        },
      }
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    packer.sync()
  end
end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float { border = "single" }
      end,
      prompt_border = "single",
    },
    git = {
      clone_timeout = 600, -- Timeout, in seconds, for git clones
    },
    auto_clean = true,
    compile_on_sync = true,
    auto_reload_compiled = true
  }
})
