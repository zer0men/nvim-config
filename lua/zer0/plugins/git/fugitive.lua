return {
    "tpope/vim-fugitive",
    cmd = {
        "Git",
    },
    keys = {
        { "<leader>gg", vim.cmd.Git,                          desc = "Git" },
        { "<leader>gs", function() vim.cmd.Git("status") end, desc = "Git" },
    },
}
