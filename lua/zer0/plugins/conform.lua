local vars = require("zer0.vars")

return {
	"stevearc/conform.nvim",
	event = {
		"BufRead",
		"BufNewFile",
	},
	opts = {
		formatters_by_ft = vars.formatters,
	},
}
