local telescope_tools = vim.g.telescope

return {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = "make",
  init = function()
    telescope_tools.add_extension("fzf", {})
  end,
}
