local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
	print(telescope)
	return
end

local telescope_tools = require("zer0.plugins.tools.telescope")

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = "which_key",
			},
		},
	},
	pickers = {
		buffers = {
			theme = "dropdown",
		},
	},
	extensions = telescope_tools.extensions_opts,
})

vim.g["rooter_cd_cmd"] = "lcd"

local extensions = telescope_tools.extensions
for _, extension_name in pairs(extensions) do
	telescope.load_extension(extension_name)
end
