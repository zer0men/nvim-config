local colorschemes = require("zer0.utils.colorschemes")

return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 2,
  init = function()
    vim.g.colorscheme = "onedark"
  end,
  config = function()
    local onedark = require("onedark")
    onedark.setup({
      style = "darker",
    })
    colorschemes.set_colorscheme("onedark")
  end,
}
