-------------
-- Plugins --
-------------

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'
  use 'rafcamlet/nvim-luapad'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float
    end
  },
}})


-------------------
-- Configuration --
-------------------

local opt = vim.opt

opt.number = true
opt.relativenumber = true


-----------------
-- Keybindings --
-----------------

vim.g.mapleader = ' '

local kDEFAULT_OPTS = {noremap = true, silent = false}

local map = vim.api.nvim_set_keymap


map('n', '<C-h>', '<C-w>h', kDEFAULT_OPTS)
map('n', '<C-j>', '<C-w>j', kDEFAULT_OPTS)
map('n', '<C-k>', '<C-w>k', kDEFAULT_OPTS)
map('n', '<C-l>', '<C-w>l', kDEFAULT_OPTS)

map('i', 'jk', '<ESC>', kDEFAULT_OPTS)
map('i', 'kj', '<ESC>', kDEFAULT_OPTS)

map('i', '<D-s>', '<ESC>:w<CR>a', kDEFAULT_OPTS)
map('n', '<D-s>', ':w<CR>', kDEFAULT_OPTS)
