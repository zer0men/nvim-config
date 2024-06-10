return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 80,
        height = vim.api.nvim_win_get_height(0) - 30,
      },
      -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
      save_on_toggle = false,

      -- saves the harpoon file upon every change. disabling is unrecommended.
      save_on_change = true,

      -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
      enter_on_sendcmd = false,

      -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
      tmux_autoclose_windows = false,

      -- filetypes that you want to prevent from adding to the harpoon list menu.
      excluded_filetypes = { "harpoon" },

      -- set marks specific to each git branch inside git repository
      mark_branch = false,

      -- enable tabline with harpoon marks
      tabline = false,
      tabline_prefix = "   ",
      tabline_suffix = "   ",
    })
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    vim.keymap.set("n", "<leader>ja", mark.add_file, { desc = "Add file to harpoon" })
    vim.keymap.set("n", "<leader>jm", ui.toggle_quick_menu, { desc = "Toogle Menu" })
    vim.keymap.set("n", "<leader>jj", ui.nav_next, { desc = "Harpoon next" })
    vim.keymap.set("n", "<leader>jk", ui.nav_prev, { desc = "Harpoon prev" })
  end,
  keys = {
    { "<leader>jj" },
    { "<leader>jk" },
    { "<leader>ja" },
    { "<leader>jm" },
  },
}
