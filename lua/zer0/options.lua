vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.loaded_matchparen = 1 -- disable built-in MatchParen.

local options = {
  autoindent = true,
  autoread = true,
  breakindent = true,
  clipboard = "unnamedplus",
  completeopt = { "menu", "menuone", "noselect", "noinsert" },
  cursorline = false,
  expandtab = true,
  guicursor = "",
  guifont = "FiraCode Nerd Font 11",
  hlsearch = false,
  colorcolumn = { 81, 101 },
  ignorecase = true,
  incsearch = false,
  mouse = "",
  number = true,
  relativenumber = true,
  scrolloff = 7,
  sidescrolloff = 7,
  shiftround = true,
  shiftwidth = 4,
  shortmess = "ltToOCFIc",
  listchars = {
    tab = "⇥-",
    lead = "·",
    trail = "·",
    nbsp = "⎵",
    extends = "⟩",
    precedes = "⟨",
  },
  showbreak = "➥ ",
  spelllang = { "en", "uk" },
  pumheight = 20,
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
  local _, err = pcall(function()
    vim.opt[key] = value
  end)
  if err then
    print(key .. ": " .. err)
  end
end
