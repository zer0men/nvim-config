return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { import = "zer0.plugins.telescope.extensions" },
    { "nvim-lua/popup.nvim" },
    { "nvim-lua/plenary.nvim" },
  },
  event = "VeryLazy",
  config = function()
    require("zer0.plugins.telescope.setup")
  end,
  keys = {
    {
      "<leader>ff",
      function()
        vim.cmd.Telescope("find_files")
      end,
      desc = "Find File",
    },
    {
      "<leader>fb",
      function()
        vim.cmd.Telescope("buffers")
      end,
      desc = "Find File",
    },
    {
      "<leader>ft",
      function()
        vim.cmd.Telescope("treesitter")
      end,
      desc = "Find treesitter",
    },
    {
      "<leader>fm",
      function()
        vim.cmd.Telescope("man_pages")
      end,
      desc = "Find File",
    },

    {
      "<leader>fg",
      function()
        vim.cmd.Telescope("live_grep")
      end,
      desc = "Find Grep",
    },
    {
      "<leader>fh",
      function()
        vim.cmd.Telescope("help_tags")
      end,
      desc = "Find Helps",
    },
  },
  lazy = true,
}
