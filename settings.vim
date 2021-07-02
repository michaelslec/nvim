colorscheme lunar " Set colorscheme


syntax on " Syntax highlighting
filetype plugin on " Filetype detection
set inccommand=split " Make substitution work in realtime

set hidden " Allow Hidden files
set pumheight=10 " Makes popup menu smaller
set fileencoding=utf-8 " The encoding written to file
set cmdheight=2 " More space for displaying messages
set mouse=nicrv " Enable your mouse
set splitbelow " Horizontal splits will automatically be below
set termguicolors " set term gui colors most terminals support this
set splitright " Vertical splits will automatically be to the right
set conceallevel=0 " So that I can see `` in markdown files
set colorcolumn=79 " fix indentline for now
set ts=4 " Insert 2 spaces for a tab
set sw=4 " Change the number of space characters inserted for indentation
set expandtab " Converts tabs to spaces
set completeopt="menuone,noselect"
set smartindent " Makes indenting smart
set number " set numbered lines
set relativenumber " set relative number
set cursorline " set highlighting of the current line
set showtabline=2 " Always show tabs
set noshowmode " We don't need to see things like -- INSERT -- anymore
set nobackup " This is recommended by coc
set nowritebackup " This is recommended by coc
set noswapfile " Do not write any swp files
set undodir=$HOME/.cache/nvim/undo
set undofile " Enable persistent undo
set signcolumn="yes" " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300 " Faster completion
set timeoutlen=100 " By default timeoutlen is 1000 ms
set clipboard="unnamedplus" " Copy paste between vim and everything else
set smartcase
