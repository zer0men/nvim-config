return {
  "MagicDuck/grug-far.nvim",
  opts = {
    ignoreVisualSelection = false,
    engines = {
      ripgrep = {
        placeholders = {
          flags = "--miltilines",
        },
      },
    },
  },
  config = function(_, opts)
    local grug = require("grug-far")
    grug.setup(opts)
    vim.keymap.set({ "n", "v" }, "<leader>sr", grug.open)
  end,
  keys = {
    { "<leader>sr", mode = { "n", "v" }, desc = "Replace" },
    {
      "<leader>ss",
      function()
        vim.cmd.GrugFar("astgrep")
      end,
      desc = "Replace",
    },
  },
}
