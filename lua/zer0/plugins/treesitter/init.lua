return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    config = function()
      local treesitter_indent = require("nvim-treesitter.indent")
      local treesitter_config = require("nvim-treesitter.configs")
      treesitter_config.setup({
        ignore_install = {},
        modules = {},
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "markdown" },
        },
        auto_install = true,
        ensure_installed = "all",
        sync_install = false,
      })
      vim.cmd.TSInstall("all")

      vim.keymap.set("n", "<leader>tth", function()
        vim.cmd.TSBufToggle("highlight")
      end, { desc = "Toggle buffer Highlight" })
      vim.keymap.set("n", "<leader>tti", function()
        vim.cmd.TSBufToggle("indent")
      end, { desc = "Toggle buffer Highlight" })
    end,
  },
}
