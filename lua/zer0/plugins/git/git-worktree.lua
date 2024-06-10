return {
  "polarmutex/git-worktree.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("git-worktree").setup({
      change_directory_command = "cd",
      update_on_change = true, -- default: true,
      update_on_change_command = "e .", -- default: "e .",
      clearjumps_on_change = true, -- default: true,
      autopush = false, -- default: false,
    })

    local Worktree = require("git-worktree")

    Worktree.on_tree_change(function(op, metadata)
      if op == Worktree.Operations.Switch then
        vim.notify("Switched from " .. metadata.prev_path .. " to " .. metadata.path)
      end
    end)
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
      desc = "Create Git Worktree",
    },
  },
}
