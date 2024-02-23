return {
    "ahmedkhalf/project.nvim",
    config = function()
        require("project_nvim").setup {
            -- patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
            patterns = { ".git" },
            detection_methods = { "pattern", "lsp" },
            silent_chdir = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    end
}
