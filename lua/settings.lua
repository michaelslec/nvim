local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local opt = vim.opt  -- to set options

cmd 'syntax enable'                 -- Enables syntax highlighing
require('colors')

opt.completeopt = {'menuone', 'noselect'}  -- Completion options (for deoplete)
opt.shortmess:append('c')           -- Don't pass messages to |ins-completion-menu|
opt.iskeyword:append('-')           -- treat dash separated words as a word text object"
opt.expandtab = true                -- Use spaces instead of tabs
opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true               -- Ignore case
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 4                   -- Lines of context
opt.shiftround = true               -- Round indent
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Do not ignore case with capitals
opt.smartindent = true              -- Insert indents automatically
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.tabstop = 2                     -- Number of spaces tabs count for
opt.termguicolors = true            -- True color support
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                    -- Disable line wrap
opt.encoding = 'utf-8'              -- The encoding displayed
opt.pumheight = 10                  -- Makes popup menu smaller
opt.fileencoding = 'utf-8'          -- The encoding written to file
opt.ruler = true                    -- Show the cursor position all the time
opt.cmdheight = 2                   -- More space for displaying messages
opt.mouse = 'nicrv'                 -- Enable your mouse
opt.conceallevel = 0                -- So that I can see `` in markdown files
opt.shiftwidth = 2                  -- Change the number of space characters inserted for indentation
opt.smarttab = true                 -- Makes tabbing smarter will realize you have 2 vs 4
opt.expandtab = true                -- Converts tabs to spaces
opt.autoindent = true               -- Good auto indent
opt.laststatus = 0                  -- Always display the status line
opt.cursorline = true               -- Enable highlighting of the current line
opt.showtabline = 2                 -- Always show tabs
opt.showmode = false                -- We don't need to see things like -- INSERT -- anymore
opt.swapfile = false                -- We don't like swap files in this house
opt.undofile = true                 -- Undo history persists after closing file
opt.backup = false                  -- This is recommended by coc
vim.wo.signcolumn = 'yes'           -- Always show the signcolumn, otherwise it would shift the text each time
opt.writebackup = false             -- This is recommended by coc
opt.colorcolumn = '79'
opt.updatetime = 300                -- Faster completion
opt.timeoutlen = 500                -- By default timeoutlen is 1000 ms
opt.clipboard = 'unnamedplus'       -- Copy paste between vim and everything else
opt.guifont = 'FiraCode Nerd Font:h17'
opt.titlestring = "%<%F%=%l/%L - nvim"
TERMINAL = fn.expand '$TERMINAL'
cmd('let &titleold="'..TERMINAL..'"')
opt.title = true                    -- Set window title to custom string

cmd 'filetype plugin on'
