-- Go To normal Mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("t", "nn", "<C-\\><C-n>", { silent = true })

vim.keymap.set("n", "gn", "<C-i>", { silent = true })
vim.keymap.set("n", "gp", "<C-o>", { silent = true })
vim.keymap.set("n", "<leader>/", vim.cmd.nohlsearch, { desc = "No Highligh" })
-- Keymaping for buffer
vim.keymap.set("n", "<leader>c", vim.cmd.bdelete, { silent = true })
vim.keymap.set("n", "<leader>C", function()
  vim.cmd.bdelete({ bang = true })
end, { silent = true })
vim.keymap.set("n", "<leader>x", vim.cmd.x, { silent = true })
vim.keymap.set("n", "<leader>W", vim.cmd.w, { silent = true })

vim.keymap.set("n", "<leader>tc", function()
  vim.o.cursorline = not vim.o.cursorline
end, { silent = true, desc = "Toggle cursorline" })

vim.keymap.set("n", "<leader>E", function()
  vim.cmd.e("%")
end, { desc = "Reopen File" })

vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })
