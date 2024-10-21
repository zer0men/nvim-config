local colorschemes = require("zer0.utils.colorschemes")

return {
  "tssm/fairyfloss.vim",
  name = "colibri",
  opts = {},
  config = function(colorscheme, opts)
    require(colorscheme.name).setup(opts)
    local name = "fairyfloss"
    colorschemes.set_colorscheme(name)
  end,
  priority = 400,
}
