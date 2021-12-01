local opt = vim.opt

opt.clipboard='unnamedplus'
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.completeopt = 'menuone,noselect'

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.guifont = 'FiraCode Nerd Font:h16'
opt.termguicolors = true

opt.timeoutlen = 350

vim.cmd('colorscheme tokyonight')
vim.g.neovide_input_use_logo = true
