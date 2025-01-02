local M = {}

M.yaml_to_json = function(input)
  local obj = vim
    .system({ "yq", "-j", "--indent=0" }, {
      stdin = input,
      text = true,
    })
    :wait()
  if obj.code == 0 then
    return obj.stdout
  else
    vim.notify("error: ", vim.inpect(obj))
    return input
  end
end

M.jq = function(input)
  local obj = vim
    .system({ "jq" }, {
      stdin = input,
      text = true,
    })
    :wait()
  if obj.code == 0 then
    return obj.stdout
  end
  return input
end

M.profiler = function()
    filename = vim.fn.input("Profiler file path")
    vim.cmd.profile()
end

return M
