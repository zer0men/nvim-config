local colorschemes = require("zer0.utils.colorschemes")

return {
  "tssm/fairyfloss.vim",
  name = "fairyfloss",
  config = function(colorscheme, opts)
    local name = "fairyfloss"
    colorschemes.set_colorscheme(name)
  end,
  priority = 400,
}
