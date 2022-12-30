local opt = vim.opt

opt.clipboard = 'unnamedplus'
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.completeopt = 'menuone,noselect'

opt.mouse = 'a'

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.guifont = 'FiraCode Nerd Font:h16'
opt.termguicolors = true

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldenable = false

opt.timeoutlen = 350

vim.cmd('colorscheme tokyonight')
vim.g.neovide_input_use_logo = true
vim.g.neovide_transparency = 0.9

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
