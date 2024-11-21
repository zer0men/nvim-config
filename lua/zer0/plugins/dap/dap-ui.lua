return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  config = function()
    local dapui = require("dapui")
    dapui.setup()
    vim.keymap.set("n", "<leader>dO", function()
      dapui.close()
      dapui.open({ reset = true })
    end, { desc = "Open Dap" })
    vim.keymap.set("n", "<leader>dk", dapui.close, { desc = "Close Dap" })
    vim.keymap.set("n", "<leader>dR", dapui.update_render, { desc = "Update Dap" })
  end,
  keys = {
    { "<leader>dk" },
    { "<leader>dO" },
    { "<leader>dR" },
  },
}
