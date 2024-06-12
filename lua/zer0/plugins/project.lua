return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup({
      -- patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      patterns = { ".git" },
      detection_methods = { "pattern", "lsp" },
      silent_chdir = true,
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })
    require("telescope").load_extension("projects")
    vim.keymap.set("n", "<leader>fp", function()
      vim.cmd.Telescope("projects")
    end, { desc = "Find projects" })
  end,
  keys = {
    {
      "<leader>fp",
      function()
        vim.cmd.Telescope("project")
      end,
    },
  },
}
