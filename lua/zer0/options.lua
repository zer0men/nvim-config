local options = {
	autoindent = true,
	breakindent = true,
	clipboard = "unnamedplus",
	completeopt = "menuone,noselect",
	cursorline = true,
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
	updatetime = 50,
	colorcolumn = "70,80",
}

for key, value in pairs(options) do
	vim.o[key] = value
end

vim.g.mapleader = " "

vim.diagnostic.config({
	virtual_text = false,
})
