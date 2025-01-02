vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "*.tf" },
  callback = function()
    vim.cmd.set("filetype=terraform")
  end,
})

vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "*" },
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})
