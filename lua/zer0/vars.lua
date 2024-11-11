local M = {}

M.lsp_servers = {
  "ansiblels",
  "arduino_language_server",
  "bashls",
  "clangd",
  "eslint",
  "gopls",
  "jsonls",
  "lua_ls",
  "cssls",
  "terraformls",
  "kotlin_language_server",
  "dockerls",
  "docker_compose_language_service",
  "phpactor",
  "tflint",
  "ts_ls",
  "pyright",
  "grammarly",
  "yamlls",
  "taplo",
}

M.formatters = {
  lua = { "stylua" }, -- Conform will run multiple formatters sequentially
  python = { "isort", "black" },
  -- Use a sub-list to run only the first available formatter
  javascript = { "prettier", "eslint_d" },
  yaml = { "yamlfmt", "yq", "yamlfix" },
  typescript = { "prettier", "eslint_d" },
  arduino = { "clang-format"},
  ["c++"] = { "clang-format"},
  terraform = { "terraform-fmt" },
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
