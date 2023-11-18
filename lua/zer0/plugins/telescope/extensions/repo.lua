local telescope_tools = require("zer0.plugins.tools.telescope")

return {
	"cljoly/telescope-repo.nvim",
	module = true,
	init = function()
		telescope_tools.add_extension("repo", {
			list = {
				fd_opts = {},
				settings = {
					auto_lcd = true,
				},
			},
		})
		vim.g["rooter_cd_cmd"] = "lcd"
	end,
	keys = {
		{ "<leader>fp", "<cmd>Telescope repo list<cr>", desc = "Find Projects" },
	},
}
