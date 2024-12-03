local main_module = "zer0"

local function zer0_require(name)
  require(main_module .. "." .. name)
end

zer0_require("start_setup")
zer0_require("globals")
zer0_require("options")
zer0_require("lazy")
zer0_require("autocommands")
zer0_require("mapping")
zer0_require("diagnostics")
zer0_require("finish_setup")
