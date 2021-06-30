local utils = {}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
function utils.setup_lsp_servers(on_attach)
  local lspinstall = require('lspinstall')
  local servers = lspinstall.installed_servers()

  lspinstall.setup()
  for _, server in pairs(servers) do
    require('lspconfig')[server].setup{on_attach = on_attach}
  end
end

return utils
