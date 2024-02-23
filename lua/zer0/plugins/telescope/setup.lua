local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
    print(telescope)
    return
end

local telescope_tools = vim.g.telescope

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = "which_key",
            },
        },
    },

    pickers = {
        find_files = {
            hidden = true,
            no_ignore = true
        },
        git_files = {
            show_untracked = false,
            git_command = { "fd", "--hidden", "--no-ignore", "--type=file" },
        },
        buffers = {
            sort_lastused = true,
            theme = "dropdown",
        },
    },
    extensions = telescope_tools.get_extensions(),
})

vim.g["rooter_cd_cmd"] = "lcd"

local extensions = telescope_tools.get_extensions()
for extension_name, _ in pairs(extensions) do
    telescope.load_extension(extension_name)
end
