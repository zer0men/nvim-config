return {
    "akinsho/toggleterm.nvim",
    version = "*",

    opts = {
        open_mapping = "<leader>;",
        insert_mappings = false,   -- whether or not the open mapping applies in insert mode
        terminal_mappings = false, -- whether or not the open mapping applies in the opened terminals
    },
    config = true,
    keys = {
        { "<leader>;", desc = "Toggle Term" },
    },
    cmd = {
        "ToggleTerm"
    }
}
