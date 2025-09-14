local M = {}

local colorscheme = ""
local is_setup = false

function M.set_colorscheme(colorscheme_name)
  if not is_setup then
      colorscheme = colorscheme_name
    vim.cmd.colorscheme(colorscheme)
    is_setup = true
  end
end

return M
