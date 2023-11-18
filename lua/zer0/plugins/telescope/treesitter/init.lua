return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "all" },
			sync_install = true,
		})
		vim.cmd.TSUpdate()
	end,
}
