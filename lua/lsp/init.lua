local lsp_utils = require('lsp.utils')

lsp_utils.setup_servers(lsp_utils.common_on_attach)

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  lsp_utils.setup_servers(lsp_utils.common_on_attach)
  vim.cmd("bufdo e")
end
