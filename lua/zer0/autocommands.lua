vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "*.tf" },
  callback = function()
    vim.cmd.set("filetype=terraform")
  end,
})
