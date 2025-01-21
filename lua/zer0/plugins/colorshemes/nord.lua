local colorschemes = require("zer0.utils.colorschemes")

return {
  "shaunsingh/nord.nvim",
  name = "nord",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}
