local M = {}

local fn, cmd = vim.fn, vim.cmd

M.get_or_download_packer = function()
  local present, packer = pcall(require, "packer")

  if present then
    return false, packer
  end

  local packer_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

  print "Cloning packer.."
  -- remove the dir before cloning
  fn.delete(packer_path, "rf")
  fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    packer_path,
  }

  cmd "packadd packer.nvim"
  present, packer = pcall(require, "packer")

  if present then
    print "Packer cloned successfully."
    return true, packer
  else
    error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
  end
end

return M
