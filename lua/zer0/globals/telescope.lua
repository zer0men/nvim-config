local extensions = {}
local M = {}

function M.add_extension(extension_name, extension_config)
	extensions[extension_name] = extension_config
end

function M.get_extensions()
	return extensions
end

vim.g.telescope = M
