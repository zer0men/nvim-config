return {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()
        local window_picker = require('window-picker')
        window_picker.setup({})
        vim.keymap.set("n", "<leader>ww", function()
            local win_id = window_picker.pick_window()
            if win_id then
                vim.api.nvim_set_current_win(win_id)
            end
        end, { desc = "Pick Window" })
    end,
}
