vim.api.nvim_create_autocmd({"CursorHold"}, {
    pattern = {"*"},
    callback = function ()
        vim.cmd.checktime()
    end
})
