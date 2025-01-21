return {
  "williamboman/mason.nvim",
  opts = {},
  config = function()
    local mason = require("mason")
    mason.setup({})

    local mason_api = require("mason.api.command")
    mason_api.MasonUpdate()
  end,
}
