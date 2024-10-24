return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      sync_install = true,
    })
    vim.cmd.TSInstall("all")
    vim.cmd.TSUpdate()
    vim.cmd.TSEnable("highlight")

    vim.keymap.set("n", "<leader>tth", function()
      vim.cmd.TSBufToggle("highlight")
    end, { desc = "Toggle buffer Highlight" })
  end,
}
