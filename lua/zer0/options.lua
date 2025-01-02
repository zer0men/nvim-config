local options = {
  autoindent = true,
  breakindent = true,
  clipboard = "unnamedplus",
  completeopt = "menuone,noselect",
  cursorline = false,
  expandtab = true,
  guifont = "FiraCode Nerd Font 11",
  hlsearch = true,
  ignorecase = true,
  mouse = "",
  number = true,
  relativenumber = true,
  scrolloff = 7,
  shiftround = true,
  shiftwidth = 4,
  signcolumn = "yes",
  smartcase = true,
  smarttab = true,
  tabstop = 4,
  termguicolors = true,
  timeout = true,
  timeoutlen = 300,
  title = true,
  undofile = true,
  autoread = true,
  updatetime = 50,
  colorcolumn = "80",
  shortmess = "ltToOCFI",
  wrap = false,
}

for key, value in pairs(options) do
  res, err = pcall(function()
    vim.o[key] = value
  end)
  if err then
    print(err)
  end
end

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.loaded_matchparen = 1 -- disable built-in MatchParen.

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

