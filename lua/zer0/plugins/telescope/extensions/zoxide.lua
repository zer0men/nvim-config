local telescope_tools = require("zer0.plugins.tools.telescope")
local _, z_utils = pcall(require, "telescope._extensions.zoxide.utils")

return {
	"jvgrootveld/telescope-zoxide",
	module = true,
	init = function()
		telescope_tools.add_extension("zoxide", {
			prompt_title = "Select Folder",
			mappings = {
				default = {
					after_action = function(selection)
						print("Update to (" .. selection.z_score .. ") " .. selection.path)
					end,
				},
				["<C-s>"] = {
					before_action = function(selection)
						print("before C-s")
					end,
					action = function(selection)
						vim.cmd.edit(selection.path)
					end,
				},
			},
		})
	end,
}
