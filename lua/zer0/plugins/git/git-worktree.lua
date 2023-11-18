return {
	"ThePrimeagen/git-worktree.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("git-worktree").setup()
		require("telescope").load_extension("git_worktree")
	end,
	keys = {
		{ "<leader>gww", "<cmd>Telescope git_worktree git_worktrees<cr>", desc = "Choose Git Worktree" },
		{ "<leader>gwc", "<cmd>Telescope git_worktree create_git_worktree<cr>", desc = "Choose Git Worktree" },
	},
}
