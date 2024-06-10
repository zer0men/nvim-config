return {
  "folke/zen-mode.nvim",
  opts = {
    plugins = {
      tmux = { enabled = true },
    },
  },
  keys = {
    { "<leader>tz", vim.cmd.ZenMode, desc = "Toggle Zen mode" },
  },
}
