local map = vim.keymap.set

map("n", "<leader><leader>", ":", { desc = "::" })
map("n", "<esc>", "<cmd>noh<cr>")
map("n", "<leader>e", "<cmd>Ex<cr>", { desc = "explorer" })
