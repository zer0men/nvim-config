return {
    "lewis6991/gitsigns.nvim",
    opts = {},
    event = {
        "BufNewFile",
        "BufReadPre",
    },
    keys = {
        { "<leader>gtb", function() vim.cmd.Gitsigns("toggle_current_line_blame") end, desc = "Toggle Current line blame" },
        { "<leader>gba", function() vim.cmd.Gitsigns("stage_buffer") end,              desc = "Stage Buffer" },
        { "<leader>gbr", function() vim.cmd.Gitsigns("reset_buffer") end,              desc = "Reset Buffer" },
        { "<leader>ghj", function() vim.cmd.Gitsigns("next_hunk") end,                 desc = "Hunk Next" },
        { "<leader>ghk", function() vim.cmd.Gitsigns("prev_hunk") end,                 desc = "Hunk Prev" },
        { "<leader>ghs", function() vim.cmd.Gitsigns("stage_hunk") end,                desc = "Stage hunk" },
        { "<leader>ghr", function() vim.cmd.Gitsigns("reset_hunk") end,                desc = "Reset hunk" },
        { "<leader>ghh", function() vim.cmd.Gitsigns("preview_hunk") end,              desc = "Hunk Preview" },
        { "<leader>ghH", function() vim.cmd.Gitsigns("preview_hunk_inline") end,       desc = "Hunk Preview" }
    }
}
