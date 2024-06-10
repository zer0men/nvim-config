return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {},
  cmd = {
    "Neotree",
  },
  keys = {
    {
      "<leader>nn",
      function()
        vim.cmd.Neotree("toggle", "float", "filesystem")
      end,
      desc = "NvimTree Toggle Buffers",
    },
    {
      "<leader>nb",
      function()
        vim.cmd.Neotree("toggle", "float", "buffers")
      end,
      desc = "NvimTree Toggle Buffers",
    },
    {
      "<leader>ng",
      function()
        vim.cmd.Neotree("toggle", "float", "git_status")
      end,
      desc = "NvimTree Toggle Git",
    },
  },
}
