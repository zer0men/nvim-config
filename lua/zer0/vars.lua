local M = {}

M.lsp_servers = {
	"ansiblels",
	"bashls",
	"clangd",
	"eslint",
	"gopls",
	"jsonls",
	"lua_ls",
	"terraformls",
	"tflint",
	"tsserver",
	"efm",
	"pyright",
	"yamlls",
}

M.formatters = {
	lua = { "stylua" }, -- Conform will run multiple formatters sequentially
	python = { "isort", "black" },
	-- Use a sub-list to run only the first available formatter
	javascript = { "prettierd", "prettier" },
}

M.linters = {
	markdown = { "vale" },
	lua = { "luacheck" },
	ansible = { "ansible-lint" },
	python = { "pylint" },
}

local mason_tools = {}

for _, value in pairs(M.formatters) do
	for _, formatter_name in ipairs(value) do
		table.insert(mason_tools, formatter_name)
	end
end

for _, value in pairs(M.linters) do
	for _, formatter_name in ipairs(value) do
		table.insert(mason_tools, formatter_name)
	end
end

M.mason_tools = mason_tools

return M
