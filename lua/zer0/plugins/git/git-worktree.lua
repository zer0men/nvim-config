return {
  "ThePrimeagen/git-worktree.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("git-worktree").setup()
    require("telescope").load_extension("git_worktree")
  end,
  keys = {
    {"<leader>gww", "<cmd>Telescope git-worktree git-worktrees<cr>", desc="Choose Git Worktree"},
  },
}
