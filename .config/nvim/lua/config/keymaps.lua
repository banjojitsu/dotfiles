local map = vim.keymap.set

-- General settings
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "<leader><leader>", ":", { desc = "::" })

-- Conform
local conform = require("conform")
map("n", "<leader>f", function()
	conform.format({ async = true })
end, { desc = "Format buffer" })

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>tf", builtin.find_files, { desc = "Find files" })
map("n", "<leader>tg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>ts", builtin.current_buffer_fuzzy_find, { desc = "Search current file" })

-- Flash
local flash = require("flash")
map({ "n", "x", "o" }, "<leader>ss", function()
	flash.jump()
end, { desc = "Jump" })
map({ "n", "x", "o" }, "<leader>st", function()
	flash.treesitter()
end, { desc = "Treesitter jump" })
