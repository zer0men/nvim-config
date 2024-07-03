return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = true,
  opts = {
    auto_close = true,
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "gd",
      function()
        vim.cmd.Trouble("lsp_definitions", "focus")
      end,
    },
    {
      "gr",
      function()
        vim.cmd.Trouble("lsp_references", "focus")
      end,
    },
    {
      "<leader>q",
      function()
        vim.cmd.Trouble("diagnostics", "focus")
      end,
    },
  },
  cmd = {
    "Trouble",
  },
}
