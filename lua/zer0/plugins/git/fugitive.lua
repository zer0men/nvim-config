return {
  "tpope/vim-fugitive",
  cmd = {
    "Git",
  },
  keys = {
    { "<leader>gg", vim.cmd.Git, desc = "Git" },
    {
      "<leader>gca",
      function()
        vim.cmd.Git("commit --amend")
      end,
      desc = "Git",
    },
    {
      "<leader>gcc",
      function()
        vim.cmd.Git("commit")
      end,
      desc = "Git",
    },
    {
      "<leader>gbA",
      function()
        vim.cmd.Git("add -n %")
      end,
      desc = "Git",
    },
    {
      "<leader>gs",
      function()
        vim.cmd.Git("status --short")
      end,
      desc = "Git",
    },
    {
      "<leader>gP",
      function()
        vim.cmd.Git("push")
      end,
      desc = "Git push",
    },
    {
      "<leader>gp",
      function()
        vim.cmd.Git("pull")
      end,
      desc = "Git pull",
    },
  },
}
