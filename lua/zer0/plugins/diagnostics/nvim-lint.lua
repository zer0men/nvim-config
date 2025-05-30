local vars = require("zer0.vars")
local homepath = os.getenv("HOME")

return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = vars.linters

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linter for current file" })

    local commitlint = require("lint").linters.commitlint
    commitlint.args = {
      "--config=" .. homepath .. "/.config/commitlint/main.js",
    }
  end,
}
