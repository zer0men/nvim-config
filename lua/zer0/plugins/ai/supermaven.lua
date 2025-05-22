return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      local supermaven = require("supermaven-nvim")
      local supermaven_api = require("supermaven-nvim.api")
      supermaven.setup({})
      vim.g.cmp.add_source("supermaven")
      supermaven_api.stop()
      vim.keymap.set("n", "<leader>ts", supermaven_api.toggle, { desc = "Toggle Supermaven" })
    end,
    keys = {
      { "<leader>ts", desc = "Toggle Supermaven" },
    },
  },
}
