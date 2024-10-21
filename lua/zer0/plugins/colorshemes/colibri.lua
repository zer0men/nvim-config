local colorschemes = require("zer0.utils.colorschemes")

return {
  "archseer/colibri.vim",
  name = "colibri",
  config = function(colorscheme, opts)
    local name = "colibri"
    colorschemes.set_colorscheme(name)
  end,
  priority = 500,
}
