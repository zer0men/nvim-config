function set_colorsheme(colorscheme_name)
	if not vim.g.colorsheme then
		vim.cmd.colorsheme(colorscheme_name)
		vim.g.colorsheme = colorscheme_name
	end
end

return {
	"catppuccin/nvim",
	name = "catppuccin",
	opts = {},
	config = function(plugin, opts)
		plugin.setup(opts)
		if not vim.g.colorsheme then
			local name = "catppuccin"
			set_colorsheme(name)
		end
	end,
	priority = 10,
}
