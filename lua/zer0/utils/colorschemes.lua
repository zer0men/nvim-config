local M = {}

local is_setup = false

function M.set_colorscheme(colorscheme_name)
  if not is_setup then
    vim.cmd.colorscheme(colorscheme_name)
    is_setup = true
  end
end

return M
