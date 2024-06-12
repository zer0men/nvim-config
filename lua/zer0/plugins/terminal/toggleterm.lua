math.randomseed(os.time())
local shell = string.format('bash -c "tmux -L %f new"', math.random())

return {
  "akinsho/toggleterm.nvim",
  version = "*",

  opts = {
    shell = shell,
    direction = "float",
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
