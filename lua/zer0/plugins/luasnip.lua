return {
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		init = function()
			local function expend(args)
				require("luasnip").lsp_expand(args.body)
			end
			vim.g.cmp.set_expend_func(expend)
		end,
	},
	{
		"saadparwaiz1/cmp_luasnip",
		init = function()
			vim.g.cmp.add_source("luasnip")
		end,
	},
}
