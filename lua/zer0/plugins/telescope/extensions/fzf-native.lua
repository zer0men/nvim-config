local telescope_tools = require("zer0.plugins.tools.telescope")

return {
	"nvim-telescope/telescope-fzf-native.nvim",
	build = "make",
	init = function()
		telescope_tools.add_extension("fzf", {})
	end,
}
