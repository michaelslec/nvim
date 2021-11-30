local config_files = {
  "plugins",
  "options",
  "lsp",
  "mappings",
  "pluginConfig",
}

for _, module in ipairs(config_files) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end
