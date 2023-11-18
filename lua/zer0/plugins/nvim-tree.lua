return {
	"nvim-tree/nvim-tree.lua",
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true
	end,
	opts = {
		sort_by = "case_sensitive",
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		update_focused_file = {
			enable = true,
			update_root = true,
			ignore_list = {},
		},
		filters = {
			dotfiles = true,
		},
	},
}
