local vars = require("zer0.vars")

return {
  "stevearc/conform.nvim",
  event = {
    "BufRead",
    "BufNewFile",
  },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = vars.formatters,
    })
    vim.keymap.set("n", "<leader>F", function()
      conform.format({ lsp_fallback = true, async = true })
    end, { desc = "Format (conform)" })
  end,
}
