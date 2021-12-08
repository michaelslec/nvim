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

nmap('<leader>.', ':tabe $MYVIMRC<CR>', kNOREMAP_SILENT)

nmap('<C-h>', '<C-w>h', kNOREMAP_SILENT)
nmap('<C-j>', '<C-w>j', kNOREMAP_SILENT)
nmap('<C-k>', '<C-w>k', kNOREMAP_SILENT)
nmap('<C-l>', '<C-w>l', kNOREMAP_SILENT)

imap('jk', '<ESC>', kNOREMAP_SILENT)
tmap('jk', '<C-\\><C-n>', kNOREMAP_SILENT)

imap('<D-s>', '<ESC>:w<CR>a', kNOREMAP_SILENT)
nmap('<D-s>', ':w<CR>', kNOREMAP_SILENT)
nmap('<leader>s', ':w<CR>', kNOREMAP_SILENT)

nmap('gf', ':edit <cfile><cr>', kNOREMAP_SILENT)

nmap('<leader>p', '<cmd>lua require("telescope.builtin").find_files()<cr>', kNOREMAP_SILENT)
nmap('<leader>F', '<cmd>lua require("telescope.builtin").live_grep()<cr>', kNOREMAP_SILENT)
nmap('<leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>', kNOREMAP_SILENT)
nmap('<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', kNOREMAP_SILENT)
