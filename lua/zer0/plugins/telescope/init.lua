return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ import = "zer0.plugins.telescope.extensions" },
		{ "nvim-lua/popup.nvim" },
		{ "nvim-lua/plenary.nvim" },
	},
	config = function()
		require("zer0.plugins.telescope.setup")
	end,
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Grep" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Helps" },
	},
	lazy = false,
}
