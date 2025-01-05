local pid = vim.fn.getpid()

local function profiler_start()
  local profiler_file = "/tmp/neovim-" .. pid .. ".profile"
  vim.cmd.profiler("start", profiler_file)
  vim.cmd.profiler("func", "*")
  vim.cmd.profiler("file", "*")
end

local function profiler_stop()
  vim.cmd.profiler("stop")
end

vim.keymap.set("n", "<leader>ps", profiler_start, { desc = "Profiler start" })
vim.keymap.set("n", "<leader>pc", profiler_stop, { desc = "Profiler start" })
