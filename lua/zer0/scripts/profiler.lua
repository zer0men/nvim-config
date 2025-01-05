local pid = vim.fn.getpid()

local is_profiling = false

local function profiler_start()
  if is_profiling then
    return
  end
  local profiler_file = "/tmp/neovim-" .. pid .. ".profile"
  vim.cmd.profile("start", profiler_file)
  vim.cmd.profile("func", "*")
  vim.cmd.profile("file", "*")
  vim.notify("Profiler started")
  is_profiling = true
end

local function profiler_stop()
  if not is_profiling then
    return
  end
  vim.cmd.profile("stop")
  vim.notify("Profiler stoped")
  is_profiling = false
end

vim.keymap.set("n", "<leader>ps", profiler_start, { desc = "Profiler start" })
vim.keymap.set("n", "<leader>pc", profiler_stop, { desc = "Profiler stop" })
