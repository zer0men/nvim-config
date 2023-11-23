-- Go To normal Mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { silent = true })

vim.keymap.set("n", "gb", "<C-o>", { silent = true })
vim.keymap.set("n", "gn", "<C-i>", { silent = true })
-- Keymaping for buffer
vim.keymap.set("n", "<leader>c", vim.cmd.bdelete, { silent = true })
vim.keymap.set("n", "<leader>C", "<cmd>bdelete!<cr>", { silent = true })
vim.keymap.set("n", "<leader>bx", vim.cmd.x, { silent = true })
vim.keymap.set("n", "<leader>bs", vim.cmd.w, { silent = true })
