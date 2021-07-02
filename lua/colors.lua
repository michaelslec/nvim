local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

g.everforest_background = 'hard'
opt.background = 'light'
cmd 'colorscheme everforest'
