local lspconf = require('lspconfig')

lspconf.pyls.setup {}
lspconf.vimls.setup {}


local lls_root = '/Users/michael/projects/lls/'
local lls_bin = lls_root..'bin/macOS/lua-language-server'

lspconf.sumneko_lua.setup {
	cmd = {lls_bin, '-E', lls_root..'/main.lua'};
	settings = {
		Lua = {
			diagnostics = {
				globals = {'vim'},
			},
		},
	},
}
