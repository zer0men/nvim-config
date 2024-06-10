local vars = require("zer0.vars")

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = vars.lsp_servers,
  },
}
