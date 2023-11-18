return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	cmd = {
		"Neotree",
	},
	keys = {
		{ "<leader>nn", "<cmd>Neotree<cr>", desc = "Neotree" },
		{ "<leader>nf", "<cmd>Neotree float<cr>", desc = "Neotree" },
	},
}
