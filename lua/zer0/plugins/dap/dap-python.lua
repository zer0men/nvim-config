return {
  "mfussenegger/nvim-dap-python",
  config = function()
    local dappy = require("dap-python")
    dappy.setup()
  end,
}
