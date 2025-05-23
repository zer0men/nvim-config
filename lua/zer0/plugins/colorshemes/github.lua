local colorschemes = require("zer0.utils.colorschemes")

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1, -- make sure to load this before all the other start plugins
  opts = {},
  config = function(colorcheme, opts)
    require(colorcheme.name).setup(opts)
    local name = colorcheme.name
    colorschemes.set_colorscheme("github_dark_default")
  end,
}
