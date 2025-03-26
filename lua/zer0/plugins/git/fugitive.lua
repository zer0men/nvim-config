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
      desc = "Git commit amend",
    },
    {
      "<leader>gcc",
      function()
        vim.cmd.Git("commit")
      end,
      desc = "Git commit",
    },
    {
      "<leader>gbA",
      function()
        vim.cmd.Git("add -n %")
      end,
      desc = "Git add current buffer",
    },
    {
      "<leader>gf",
      function()
        vim.cmd.Git("fetch --all --prune")
      end,
      desc = "Git Fetch",
    },
    {
      "<leader>gs",
      function()
        vim.cmd.Git("status --short")
      end,
      desc = "Git status short",
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
