return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
			"someone-stole-my-name/yaml-companion.nvim",
			opts = {
				schemas = {
					{
						name = "Kubernetes 1.22.4",
						uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.4-standalone-strict/all.json",
					},
				},
				lspconfig = {
					cmd = { "yaml-language-server" },
				},
			},
		"cljoly/telescope-repo.nvim",
		"xiyaowong/telescope-emoji.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"ElPiloto/telescope-vimwiki.nvim",
			"lpoto/telescope-docker.nvim",
		"jvgrootveld/telescope-zoxide",
		"nvim-lua/popup.nvim",
    {'nvim-lua/plenary.nvim'}
  },
  config = function()
    require("zer0.plugins.telescope.setup")
  end
}
