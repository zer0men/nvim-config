local main_module = "zer0"

function zer0_require(name)
	require(main_module .. "." .. name)
end

zer0_require("globals")
zer0_require("options")
zer0_require("lazy")
