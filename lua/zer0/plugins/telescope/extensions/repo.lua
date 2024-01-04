local telescope_tools = vim.g.telescope

return {
    "cljoly/telescope-repo.nvim",
    module = true,
    init = function()
        telescope_tools.add_extension("repo", {
            list = {
                fd_opts = {},
                settings = {
                    auto_lcd = true,
                },
            },
        })
        vim.g["rooter_cd_cmd"] = "lcd"
    end,
    keys = {
        {
            "<leader>fp",
            function()
                vim.cmd.Telescope("repo", "list")
            end,
            desc = "Find Projects",
        },
    },
}
