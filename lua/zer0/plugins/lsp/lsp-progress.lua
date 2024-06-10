return {
  "linrongbin16/lsp-progress.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    vim.g.lualine_c = require("lsp-progress").progress
  end,
  config = function()
    require("lsp-progress").setup()
  end,
}
