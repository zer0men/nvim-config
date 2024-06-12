return {
  "akinsho/toggleterm.nvim",
  version = "*",

  opts = {
    shell = string.format('bash -c "tmux -L nvim new"'),
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
