return {
  "MagicDuck/grug-far.nvim",
  opts = {},
  config = function(_, opts)
    local grug = require("grug-far")
    grug.setup(opts)
  end,
  keys = {
    { "<leader>sr", vim.cmd.GrugFar, mode = { "n", "v" }, desc = "Replace" },
    {
      "<leader>ss",
      function()
        vim.cmd.GrugFar("astgrep")
      end,
      desc = "Replace",
    },
  },
}
