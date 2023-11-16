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
	shiftwidth = 2,
	signcolumn = "yes",
	smartcase = true,
	smarttab = true,
	tabstop = 2,
	termguicolors = true,
	timeout = true,
	timeoutlen = 300,
	title = true,
	undo = true,
	undofile = true,
	updatetime = 250,
}

for key, value in pairs(options) do
	vim.o[key] = value
end
