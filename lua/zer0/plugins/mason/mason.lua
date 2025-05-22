return {
  "williamboman/mason.nvim",
  opts = {},
  config = function()
    local mason = require("mason")
    mason.setup({})
  end,
}
