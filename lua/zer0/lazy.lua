local concurrency = 5

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

local lazy = require("lazy")
lazy.setup({
  spec = { import = "zer0.plugins" },
  concurrency = concurrency,
  checker = {
    concurrency = concurrency,
  },
  git = {
    url_format = "https://github.com/%s.git",
  },
})
