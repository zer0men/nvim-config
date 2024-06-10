local colorschemes = require("zer0.utils.colorschemes")

return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {},
  config = function(catppuccin, opts)
    require(catppuccin.name).setup(opts)
    local name = "catppuccin"
    colorschemes.set_colorscheme(name)
  end,
  priority = 101,
}
