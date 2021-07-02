local set_keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '

set_keymap('n', '<leader>w', ':w<CR>', opts)
set_keymap('n', '<leader>d', ':bd<CR>', opts)

-- better window movement
set_keymap('n', '<C-h>', '<C-w>h', opts)
set_keymap('n', '<C-j>', '<C-w>j', opts)
set_keymap('n', '<C-k>', '<C-w>k', opts)
set_keymap('n', '<C-l>', '<C-w>l', opts)

-- Terminal window navigation
set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', opts)
set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', opts)
set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', opts)
set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', opts)
set_keymap('i', '<C-h>', '<C-\\><C-N><C-w>h', opts)
set_keymap('i', '<C-j>', '<C-\\><C-N><C-w>j', opts)
set_keymap('i', '<C-k>', '<C-\\><C-N><C-w>k', opts)
set_keymap('i', '<C-l>', '<C-\\><C-N><C-w>l', opts)

-- better indenting
set_keymap('v', '<', '<gv', opts)
set_keymap('v', '>', '>gv', opts)

-- I hate escape
set_keymap('i', 'jk', '<ESC>', opts)
set_keymap('i', 'kj', '<ESC>', opts)
set_keymap('i', 'jj', '<ESC>', opts)

-- Move selected line / block of text in visual mode
set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', opts)
set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', opts)

-- Better nav for omnicomplete
set_keymap('i', '<C-j>', '\"\\<C-n>\"', { noremap = true, expr = true })
set_keymap('i', '<C-k>', '\"\\<C-p>\"', { noremap = true, expr = true })
