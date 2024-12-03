return {
  "ThePrimeagen/git-worktree.nvim",
  config = function()
    require("git-worktree").setup({})
    require("telescope").load_extension("git_worktree")
  end,
  keys = {
    {
      "<leader>gww",
      function()
        vim.cmd.Telescope("git_worktree", "git_worktrees")
      end,
      desc = "List Git Worktree",
    },
    {
      "<leader>gwc",
      function()
        vim.cmd.Telescope("git_worktree", "create_git_worktree")
      end,
      desc = "List Git Worktree",
    },
  },
}
