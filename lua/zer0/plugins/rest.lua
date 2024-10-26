local func = require("zer0.function")

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
      require("telescope").load_extension("rest")
      vim.api.nvim_create_autocmd("User", {
        pattern = "RestResponsePre",
        callback = function()
          local res = _G.rest_response
          res.body = func.jq(res.body)
        end,
      })
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
        "<leader>rl",
        function()
          vim.cmd.Rest("logs")
        end,
        desc = "Rest Open",
      },
      {
        "<leader>rs",
        function()
          vim.cmd.Telescope("rest", "select_env")
        end,
        desc = "Rest Logs",
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
