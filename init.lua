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
  use 'rafi/awesome-vim-colorschemes'

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

vim.cmd('colorscheme github')
vim.g.neovide_input_use_logo = true


-----------------
-- Keybindings --
-----------------

vim.g.mapleader = ' '

local kNOREMAP_SILENT = {noremap = true, silent = false}

local map = vim.api.nvim_set_keymap
local function nmap(lhs, rhs, opts) 
	map('n', lhs, rhs, opts)
end
local function imap(lhs, rhs, opts) 
	map('i', lhs, rhs, opts)
end
local function tmap(lhs, rhs, opts) 
	map('t', lhs, rhs, opts)
end

nmap('<leader>w', ':w<CR>', kNOREMAP_SILENT)
nmap('<leader>q', ':q<CR>', kNOREMAP_SILENT)
nmap('<leader>d', ':bd<CR>', kNOREMAP_SILENT)

nmap('<C-h>', '<C-w>h', kNOREMAP_SILENT)
nmap('<C-j>', '<C-w>j', kNOREMAP_SILENT)
nmap('<C-k>', '<C-w>k', kNOREMAP_SILENT)
nmap('<C-l>', '<C-w>l', kNOREMAP_SILENT)

imap('jk', '<ESC>', kNOREMAP_SILENT)
tmap('jk', '<C-\\><C-n>', kNOREMAP_SILENT)

imap('<D-s>', '<ESC>:w<CR>a', kNOREMAP_SILENT)
imap('<leader>s', '<ESC>:w<CR>a', kNOREMAP_SILENT)
nmap('<D-s>', ':w<CR>', kNOREMAP_SILENT)
nmap('<leader>s', ':w<CR>', kNOREMAP_SILENT)
