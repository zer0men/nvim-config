return {
    'tanvirtin/vgit.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    opts = {},
    keys = {
        { "<leader>ghq", function() vim.cmd.VGit("project_hunks_qf") end,      desc = "Hunl QF" },
        { "<leader>ghp", function() vim.cmd.VGit("project_hunks_preview") end, desc = "Hunks Preview" },
    }
}
