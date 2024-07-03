return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
      reveal = true, -- path to file or folder to reveal
      reveal_force_cwd = true,   -- change cwd without asking if needed
  },
  cmd = {
    "Neotree",
  },
  keys = {
    {
      "<leader>nn",
      function()
        vim.cmd.Neotree("toggle", "float", "filesystem", "reveal", "reveal_force_cwd")
      end,
      desc = "NvimTree Toggle Buffers",
    },
    {
      "<leader>nb",
      function()
        vim.cmd.Neotree("toggle", "float", "buffers", "reveal", "reveal_force_cwd" )
      end,
      desc = "NvimTree Toggle Buffers",
    },
    {
      "<leader>ng",
      function()
        vim.cmd.Neotree("toggle", "float", "git_status", "reveal", "reveal_force_cwd")
      end,
      desc = "NvimTree Toggle Git",
    },
  },
}
