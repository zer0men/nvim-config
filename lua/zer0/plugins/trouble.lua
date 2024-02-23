return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        { "gd", function() vim.cmd.Trouble("lsp_definitions") end },
        { "gr", function() vim.cmd.Trouble("lsp_references") end }
    },
    cmd = {
        "Trouble"
    }
}
