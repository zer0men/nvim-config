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
  timeoutlen = 1000,
  title = true,
  undofile = true,
  autoread = true,
  updatetime = 50,
  colorcolumn = "80",
  shortmess = "ltToOCFI",
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
