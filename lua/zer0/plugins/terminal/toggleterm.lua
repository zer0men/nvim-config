math.randomseed(os.time())
-- local shell = string.format('bash -c "tmux -L %f new"', math.random())
local shell = "zsh"

return {
  "akinsho/toggleterm.nvim",
  version = "*",

  opts = {
    shell = shell,
    direction = "float",
    size = function(term)
      if term.direction == "horizontal" then
        return vim.o.lines * 0.38
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = "<leader>;",
    insert_mappings = false, -- whether or not the open mapping applies in insert mode
    terminal_mappings = false, -- whether or not the open mapping applies in the opened terminals
  },
  config = true,
  keys = {
    { "<leader>;", desc = "Toggle Term" },
  },
  cmd = {
    "ToggleTerm",
  },
}
