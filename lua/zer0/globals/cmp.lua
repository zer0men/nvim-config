local M = {}

local cmp_sources = {}

function M.add_source(source_name)
	table.insert(cmp_sources, { name = source_name })
end

function M.get_sources()
	return cmp_sources
end

vim.g.cmp = M
