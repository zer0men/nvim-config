return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      local rest = require("rest-nvim")
    end,
    keys = {
      {
        "<leader>ro",
        function()
          vim.cmd.Rest("open")
        end,
        desc = "Rest Open",
      },
      {
        "<leader>re",
        function()
          vim.cmd.Rest("env", "show")
        end,
        desc = "Rest Env",
      },
      {
        "<leader>rr",
        function()
          vim.cmd.Rest("run")
        end,
        desc = "Rest Run",
      },
    },
  },
}
