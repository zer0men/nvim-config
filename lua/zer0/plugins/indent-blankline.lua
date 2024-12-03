return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    scope = {
      enabled = false,
    },
  },
  init = function()
    vim.opt.list = true
    -- vim.opt.listchars:append("eol:↴")
    -- vim.opt.listchars:append("space:.")
    -- vim.opt.listchars:append("trail:-")
    -- vim.opt.listchars:append("nbsp:_")
  end,
}
