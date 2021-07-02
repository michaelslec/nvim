local execute = vim.api.nvim_command
local fn = vim.fn


--------------------------
-- Auto-download Packer -- 
--------------------------

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


--------------------
-- Manage Plugins -- 
--------------------

require('packer').startup({function(use)

	-- Packer manages itself
	use 'wbthomason/packer.nvim'

	-- Neovim LSP
	use 'neovim/nvim-lspconfig'

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
