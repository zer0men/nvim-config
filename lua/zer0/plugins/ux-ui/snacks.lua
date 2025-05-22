-- TODO: investigate snack functions

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  init = function()
    vim.g.snacks_animate = false
  end,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
