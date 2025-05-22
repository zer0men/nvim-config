local vars = require("zer0.vars")

local lsp_servers = {}
for _, value in ipairs(vars.lsp_servers) do
  local server_name = ""
  -- TODO: use switch instead of if
  if type(value) == "table" then
    if value.mason == nil then
      goto continue
    else
      server_name = value.mason
    end
  elseif type(value) == "string" then
    server_name = value
  else
    goto continue
  end
  table.insert(lsp_servers, server_name)
  ::continue::
end

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = lsp_servers,
    automatic_enable = false
  },
}
