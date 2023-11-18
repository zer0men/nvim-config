local telescope_tools = require("zer0.plugins.tools.telescope")

return {
	"ElPiloto/telescope-vimwiki.nvim",
	module = true,
	init = function()
		telescope_tools.add_extension("vimwiki", {})
	end,
}
