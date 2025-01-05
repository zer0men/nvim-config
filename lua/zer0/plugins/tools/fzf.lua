return {
  {
    "junegunn/fzf",
    build = function()
      vim.cmd("fzf#install()")
    end,
  },
  {
    "junegunn/fzf.vim",
  },
}
