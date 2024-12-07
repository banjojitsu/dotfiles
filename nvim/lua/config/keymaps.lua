local map = vim.keymap.set

map("n", "<esc>", "<cmd>noh<cr>")
map("n", "<leader>e", "<cmd>Ex<cr>", { desc = "explorer" })
map("n", "<leader>q", "<cmd>q!<cr>", { desc = "quit" })
map({ "n", "x" }, "<leader><leader>", ":", { desc = "::" })
