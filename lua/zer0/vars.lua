local M = {}

M.lsp_servers = {
  "ansiblels",
  "arduino_language_server",
  "awk_ls",
  "bashls",
  "clangd",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "eslint",
  "gopls",
  "jsonls",
  "kotlin_language_server",
  "lua_ls",
  "phpactor",
  "pyright",
  "omnisharp",
  "taplo",
  "terraformls",
  "tflint",
  "ts_ls",
  "yamlls",
  "nginx_language_server",
}

M.formatters = {
  lua = { "stylua" }, -- Conform will run multiple formatters sequentially
  python = { "isort", "black" },
  -- Use a sub-list to run only the first available formatter
  javascript = { "prettier", "eslint_d" },
  yaml = { "yamlfmt", "yq", "yamlfix" },
  typescript = { "prettier", "eslint_d" },
  arduino = { "clang-format" },
  ["c++"] = { "clang-format" },
  terraform = { "terraform_fmt" },
  ["terraform-vars"] = { "terraform_fmt" },
}

M.linters = {
  arduino = { "cppcheck", "cpplint" },
  ["c++"] = { "cppcheck", "cpplint" },
  markdown = { "markdownlint" },
  ansible = { "ansible-lint" },
  python = { "pylint" },
  gitcommit = { "commitlint" },
  terraform = { "tflint", "tfsec" },
  ["terraform-vars"] = { "tflint", "tfsec" },
}

return M
