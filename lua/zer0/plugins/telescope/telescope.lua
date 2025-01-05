return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { import = "zer0.plugins.telescope.extensions" },
    { "nvim-lua/popup.nvim" },
    { "nvim-lua/plenary.nvim" },
  },
  event = "VeryLazy",
  config = function()
    require("zer0.configs.telescope")
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
      "<leader>fa",
      function()
        vim.cmd.Telescope("autocommands")
      end,
      desc = "Find autocommands",
    },
    {
      "<leader>fk",
      function()
        vim.cmd.Telescope("keymaps")
      end,
      desc = "Find keymaps",
    },
    {
      "<leader>fb",
      function()
        vim.cmd.Telescope("buffers")
      end,
      desc = "Find buffers",
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
      desc = "Find map pages",
    },

    {
      "<leader>fg",
      function()
        vim.cmd.Telescope("live_grep")
      end,
      desc = "Live Grep",
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
