local M = {}

local colorscheme = ""
local is_setup = false

function M.set_colorscheme(colorscheme_name)
  if not is_setup then
      colorscheme = colorscheme_name
    is_setup = true
  end
end

function M.apply_colorscheme()
  if is_setup then
    vim.cmd.colorscheme(colorscheme)
  end
end

M.set_colorscheme("github_dark")

return M
