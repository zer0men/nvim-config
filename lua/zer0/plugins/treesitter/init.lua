return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      sync_install = true,
    })
    vim.cmd.TSInstall("all")
    vim.cmd.TSUpdate()
    vim.cmd.TSEnable("highlight")
  end,
}
