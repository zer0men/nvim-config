return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = true,
  opts = {
    focus = true,
  },
  keys = {
    {
      "fd",
      function()
        vim.cmd.Trouble("diagnostics")
      end,
    },
    {
      "gd",
      function()
        vim.cmd.Trouble("lsp_definitions")
      end,
    },
    {
      "gr",
      function()
        vim.cmd.Trouble("lsp_references")
      end,
    },
    {
      "<leader>q",
      function()
        vim.cmd.Trouble("diagnostics")
      end,
    },
  },
  cmd = {
    "Trouble",
  },
}
