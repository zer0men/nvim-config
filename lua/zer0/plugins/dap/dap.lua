return {
 "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    local dapbp = require("dap.breakpoints")

    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toogle breakpoint" })
    vim.keymap.set("n", "<leader>dB", function()
      dap.toggle_breakpoint(vim.fn.input("Condition: "))
    end, { desc = "Toogle breakpoint with condition" })

    vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
    vim.keymap.set("n", "<leader>dC", dap.clear_breakpoints, { desc = "Clear Breackpoints" })
    vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
    vim.keymap.set("n", "<leader>dr", dap.run_to_cursor, { desc = "Run to Cursor" })
    vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Step Out" })
    vim.keymap.set("n", "<leader>dn", dap.step_over, { desc = "Step Over" })
    vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate" })

    require("zer0.plugins.dap.configs.php")
    require("zer0.plugins.dap.configs.js-ts")
  end,
}
