local telescope_tools = vim.g.telescope
return {
	"ElPiloto/telescope-vimwiki.nvim",
	module = true,
	init = function()
		telescope_tools.add_extension("vimwiki", {})
	end,
}
