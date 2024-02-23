return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local which_key = require("which-key")
        which_key.setup({})
        which_key.register({
            f = { name = "Find" },
            g = { name = "Git", w = { name = "worktree" } },
            h = { name = "Hop" },
            d = { name = "debug" },
        }, { prefix = "<leader>" })
    end
}
