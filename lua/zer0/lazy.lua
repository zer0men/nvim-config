local concurrency = 1000

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins_spec = {}

local config_path = vim.fn.stdpath("config")
for _, plugins_path in ipairs(vim.fn.globpath(config_path .. "/lua/zer0/plugins/", "*/", true, true)) do
  local module = plugins_path:match(".*/([^/]*)/$")
  table.insert(plugins_spec, {import = "zer0.plugins." .. module})
end

local lazy = require("lazy")
lazy.setup({
  spec = plugins_spec,
  concurrency = concurrency,
  checker = {
    concurrency = concurrency,
  },
  git = {
    url_format = "https://github.com/%s.git",
  },
})
