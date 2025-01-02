require("zer0.start_setup")
require("zer0.globals")
require("zer0.options")
require("zer0.lazy")
require("zer0.mapping")
require("zer0.diagnostics")
require("zer0.finish_setup")

local config_path = vim.fn.stdpath("config")

for _, script in ipairs(vim.fn.globpath(config_path .. "/lua/zer0/scripts/", "*.lua", true, true)) do
  local module = script:match(".*/([^/]*).lua$")
  require("zer0.scripts." .. module)
end
