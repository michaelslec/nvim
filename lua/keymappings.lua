local set_keymap = vim.api.nvim_set_keymap

-- better window movement
set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- Terminal window navigation
set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', {noremap = true})
set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', {noremap = true})
set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', {noremap = true})
set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', {noremap = true})
set_keymap('i', '<C-h>', '<C-\\><C-N><C-w>h', {noremap = true})
set_keymap('i', '<C-j>', '<C-\\><C-N><C-w>j', {noremap = true})
set_keymap('i', '<C-k>', '<C-\\><C-N><C-w>k', {noremap = true})
set_keymap('i', '<C-l>', '<C-\\><C-N><C-w>l', {noremap = true})

-- better indenting
set_keymap('v', '<', '<gv', {noremap = true, silent = true})
set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
set_keymap('i', '<C-j>', '\"\\<C-n>\"', { noremap = true, expr=true })
set_keymap('i', '<C-k>', '\"\\<C-p>\"', { noremap = true, expr = true })

set_keymap('v', 'p', '0p', { noremap = true})
set_keymap('v', 'P', '0P', { noremap = true})
