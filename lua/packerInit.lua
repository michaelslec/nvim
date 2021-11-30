local M = {}
local fn = vim.fn

local present, packer = pcall(require, "packer")
if not present then
   local packer_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

   print "Cloning packer.."
   -- remove the dir before cloning
   fn.delete(packer_path, "rf")
   M.packer_boostrap = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    packer_path,
   }

   present, packer = pcall(require, "packer")

   if present then
      print "Packer cloned successfully."
   else
      error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
   end
end

packer.init {}

M.packer = packer
return M

