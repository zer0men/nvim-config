local dap = require("dap")

dap.adapters.chrome = {
  type = "executable",
  command = "node",
  args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
}


dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = 5555,
  executable = {
    command = "node",
    args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/js-debug-adapter/out/src/debugServer.js ${port}"},
  },
}

dap.configurations = {
  javascriptreact = {
    {
      name = "chrome",
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}",
    },
  },

  typescriptreact = {
    {
      name = "chrome",
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}",
    },
  },

  javascript = {
    {
      name = "chome: attach",
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}",
    },
    {
      name = "node: launch",
      type = "pwa-node",
      request = "launch",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
  },

  typescript = {
    {
      name = "chome: attach",
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}",
    },

    {
      name = "node_launch",
      type = "pwa-node",
      request = "launch",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
  },
}
