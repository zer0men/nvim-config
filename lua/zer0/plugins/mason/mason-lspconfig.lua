local vars = require("zer0.vars")

return {
  event = "VeryLazy",
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = vars.lsp_servers,
  },
}
