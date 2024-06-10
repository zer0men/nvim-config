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
  },
}
