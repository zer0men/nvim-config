return {
  "Juksuu/worktrees.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("worktrees").setup()
    require("telescope").load_extension("worktrees")
  end,
  keys = {
    {
      "<leader>gww",
      function()
        vim.cmd.Telescope("worktrees", "list_worktrees")
      end,
      desc = "List Git Worktree",
    },
    {
      "<leader>gwc",
      function()
        vim.cmd.GitWorktreeCreate()
      end,
      desc = "Create Git Worktree",
    },
  },
}
