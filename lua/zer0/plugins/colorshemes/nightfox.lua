local colorschemes = require("zer0.utils.colorschemes")

 return {
  "EdenEast/nightfox.nvim",
  name = "nightfox",
  opts = {},
  config = function(plug, opts)
    name = plug.name
    require(plug.name).setup(opts)
    colorschemes.set_colorscheme(name)
  end,
  priority = 10000,
}
