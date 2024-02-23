-- Go To normal Mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { silent = true })

vim.keymap.set("n", "gn", "<C-i>", { silent = true })
vim.keymap.set("n", "gb", "<C-o>", { silent = true })
vim.keymap.set("n", "<leader>/", vim.cmd.nohlsearch, { desc = "No Highligh" })
-- Keymaping for buffer
vim.keymap.set("n", "<leader>c", vim.cmd.bdelete, { silent = true })
vim.keymap.set("n", "<leader>C", function() vim.cmd.bdelete({ bang = true }) end, { silent = true })
vim.keymap.set("n", "<leader>bx", vim.cmd.x, { silent = true })
vim.keymap.set("n", "<leader>bs", vim.cmd.w, { silent = true })
