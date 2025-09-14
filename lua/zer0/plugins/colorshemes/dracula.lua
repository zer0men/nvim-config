local colorschemes = require("zer0.utils.colorschemes")

return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  config = function(colorscheme, opts)
    local name = "dracula"
    colorschemes.set_colorscheme(name)
  end,
  priority = 5000,
}
