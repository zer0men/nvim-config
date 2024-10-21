local colorschemes = require("zer0.utils.colorschemes")

return {
  "rose-pine/neovim",
  name = "rose-pine",
  opts = {},
  config = function(colorcheme, opts)
    require(colorcheme.name).setup(opts)
    local name = colorcheme.name
    colorschemes.set_colorscheme(name)
  end,
  priority = 20,
}
