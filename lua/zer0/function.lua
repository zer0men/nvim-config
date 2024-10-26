local M = {}

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

return M
