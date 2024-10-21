local colorschemes = require("zer0.utils.colorschemes")

return {
  "archseer/colibri.vim",
  name = "colibri",
  opts = {},
  config = function(colorscheme, opts)
    require(colorscheme.name).setup(opts)
    local name = "colibri"
    colorschemes.set_colorscheme(name)
  end,
  priority = 500,
}
