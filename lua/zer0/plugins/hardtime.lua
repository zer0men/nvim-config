return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {},
  config = true,
  keys = {
    {
      "<leader>th",
      function()
        vim.cmd.Hardtime("toggle")
      end,
      desc = "Toggle Hardtime",
    },
  },
}
