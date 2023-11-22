local M = {}

local expand_func = nil

local cmp_sources = {}

function M.add_source(source_name)
	table.insert(cmp_sources, { name = source_name })
end

function M.get_sources()
	return cmp_sources
end

function M.set_expend_func(func)
	expand_func = func
end

function M.get_expend_func()
	return expand_func
end

vim.g.cmp = M
