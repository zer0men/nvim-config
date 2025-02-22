return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  enabled = false,
  config = function()
    require("dashboard").setup({
      -- config
    })
    vim.keymap.set("n", "<leader>fD", vim.cmd.Dashboard, { desc = "Dashboard" })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
