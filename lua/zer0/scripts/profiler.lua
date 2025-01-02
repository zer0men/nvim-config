local pid = vim.fn.getpid()
local profile = require("jit.p")

local function profiler_start()
  local profiler_file = "/tmp/neovim-" .. pid .. ".profile"
  profile.start("fl", profiler_file)
end

local function profiler_stop()
  profile.stop()
end

vim.keymap.set("n", "<leader>ps", profiler_start, { desc = "Profiler start" })
vim.keymap.set("n", "<leader>pc", profiler_stop, { desc = "Profiler start" })
