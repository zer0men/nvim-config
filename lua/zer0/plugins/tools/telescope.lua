local M = {}

M.extensions = {}

M.extensions_opts = {}

function M.add_extension(name, config)
	table.insert(M.extensions, name)
	M.extensions_opts[name] = config
end

return M
