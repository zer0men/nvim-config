return {
  "folke/which-key.nvim",
  dependencies = {
    { "echasnovski/mini.nvim", version = "*" },
    { "nvim-tree/nvim-web-devicons" },
  },
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local which_key = require("which-key")
    which_key.setup({})
  end,
}
