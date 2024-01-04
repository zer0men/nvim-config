local _, z_utils = pcall(require, "telescope._extensions.zoxide.utils")
local telescope_tools = vim.g.telescope

return {
    "jvgrootveld/telescope-zoxide",
    module = true,
    init = function()
        telescope_tools.add_extension("zoxide", {
            prompt_title = "Select Folder",
            mappings = {
                default = {
                    after_action = function(selection)
                        print("Update to (" .. selection.z_score .. ") " .. selection.path)
                    end,
                },
                ["<C-s>"] = {
                    before_action = function(selection)
                        print("before C-s")
                    end,
                    action = function(selection)
                        vim.cmd.edit(selection.path)
                    end,
                },
            },
        })
    end,
    keys = {
        {
            "<leader>fz",
            function()
                vim.cmd.Telescope("zoxide", "list")
            end,
            desc = "Zoxide",
        },
    }
}
