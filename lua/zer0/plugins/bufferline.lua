return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {},
  config = true,
  lazy = false,
  keys = {
    {
      "H",
      function()
        vim.cmd("BufferLineCyclePrev")
      end,
      desc = "Prev Tab",
    },
    {
      "L",
      function()
        vim.cmd("BufferLineCycleNext")
      end,
      desc = "Next Tab",
    },
    {
      "<Tab>c",
      function()
        vim.cmd("BufferLinePickClose")
      end,
      desc = "Close Tab",
    },
    {
      "<Tab>C",
      function()
        vim.cmd("BufferLineCloseOther")
      end,
      desc = "Close Tab",
    },
    {
      "<Tab>p",
      function()
        vim.cmd("BufferLinePick")
      end,
      desc = "Pick Tab",
    },
    {
      "<Tab><Tab>",
      function()
        vim.cmd("BufferLinePick")
      end,
      desc = "Pick Tab",
    },
  },
}
