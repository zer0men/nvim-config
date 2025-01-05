vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.loaded_matchparen = 1 -- disable built-in MatchParen.

local options = {
  autoindent = true,
  autoread = true,
  breakindent = true,
  clipboard = "unnamedplus",
  colorcolumn = "80",
  completeopt = "menuone,noselect",
  cursorline = false,
  expandtab = true,
  guicolor = "",
  guifont = "FiraCode Nerd Font 11",
  hlsearch = false,
  ignorecase = true,
  incsearch = false,
  mouse = "",
  number = true,
  relativenumber = true,
  scrolloff = 7,
  shiftround = true,
  shiftwidth = 4,
  shortmess = "ltToOCFI",
  signcolumn = "yes",
  smartcase = true,
  smarttab = true,
  tabstop = 4,
  termguicolors = true,
  timeout = true,
  timeoutlen = 300,
  title = true,
  undofile = true,
  updatetime = 50,
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
