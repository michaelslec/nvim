local execute = vim.api.nvim_command
local fn = vim.fn


--------------------------
-- Auto-download Packer --
--------------------------

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


--------------------
-- Manage Plugins --
--------------------

require('packer').startup({function(use)

  -- Packer manages itself
  use { 'wbthomason/packer.nvim' }

  -- Reload vim config
  use { 'famiu/nvim-reload', requires = 'nvim-lua/plenary.nvim' }

  -- Neovim LSP
  use { 'neovim/nvim-lspconfig' }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Color
  use { 'christianchiarulli/nvcode-color-schemes.vim', opt = true }
  use { 'sainnhe/everforest' }

  -- Git
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    }
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons'
    },
    config = function() require('gitsigns').setup() end
  }

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})


require('nvim-treesitter.configs').setup {
  ensure_installed = 'maintained',
  hightlight = {
    enable = true
  },
  indent = {
    enable = true
  },
}


require('neogit').setup {
  integrations = {
    diffview = true
  },
}
