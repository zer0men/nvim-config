local colorschemes = require("zer0.utils.colorschemes")

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 3,
  init = function()
    vim.g.colorscheme = "tokyonight"
  end,
  opts = {},
  config = function()
    colorschemes.set_colorscheme("tokyonight-night")
  end,
}
