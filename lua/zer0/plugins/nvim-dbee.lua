return {
  "kndndrj/nvim-dbee",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  build = function()
    -- Install tries to automatically detect the install method.
    -- if it fails, try calling it with one of these parameters:
    --    "curl", "wget", "bitsadmin", "go"
    require("dbee").install()
  end,
  config = function()
    local dbee = require("dbee")
    dbee.setup()
    vim.keymap.set("n", "<leader>io", dbee.toggle)
    vim.keymap.set("n", "<leader>ir", dbee.execute)
    vim.keymap.set("n", "<leader>ic", dbee.close)
    vim.keymap.set("n", "<leader>is", dbee.store)
  end,
  keys = {
    { "<leader>io", desc = "Toggle dashboard" },
    { "<leader>ic", desc = "Close dbee" },
    { "<leader>ir", desc = "Dbee Run" },
    { "<leader>is", desc = "Dbee Store" },
  },
}
