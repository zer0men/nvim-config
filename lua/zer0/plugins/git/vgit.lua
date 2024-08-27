return {
  "tanvirtin/vgit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {},
  cmd = { "VGit" },
  keys = {
    {
      "<leader>ghq",
      function()
        vim.cmd.VGit("project_hunks_qf")
      end,
      desc = "Hunks QF",
    },
    {
      "<leader>ghp",
      function()
        vim.cmd.VGit("project_hunks_preview")
      end,
      desc = "Hunks Preview",
    },
    {
      "<leader>gbd",
      function()
        vim.cmd.VGit("buffer_diff_preview")
      end,
      desc = "Buffer Diff Preview",
    },
    {
      "<leader>gD",
      function()
        vim.cmd.VGit("project_diff_preview")
      end,
      desc = "Project Diff Preview",
    },
    {
      "<leader>gbh",
      function()
        vim.cmd.VGit("buffer_history_preview")
      end,
      desc = "Project Diff Preview",
    },
  },
}
