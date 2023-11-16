local package_name = "zer0"

function zero_require(name)
	require(package_name .. "." .. name)
end


zer0_require("options")
