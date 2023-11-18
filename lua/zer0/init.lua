local package_name = "zer0"

function zer0_require(name)
	require(package_name .. "." .. name)
end

zer0_require("options")
zer0_require("lazy")
