return {
  "rafcamlet/nvim-luapad",
  opts = {},
  config = function()
    local luapad = require("luapad")
    local luapad_run = require("luapad.run")
    luapad.setup({
      eval_on_move = false,
      eval_on_change = false,
    })
    vim.keymap.set("n", "<leader>Ll", luapad.init)
    vim.keymap.set("n", "<leader>Lr", luapad_run.run)
  end,
  keys = {
    { "<leader>Ll", desc = "Luapad Open" },
    { "<leader>Lr", desc = "Luapad Run" },
  },
}
