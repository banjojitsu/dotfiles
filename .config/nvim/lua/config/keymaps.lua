local map = vim.keymap.set

-- General settings
map("n", "<esc>", "<cmd>nohlsearch<cr>")
map("n", "<leader><leader>", ":", { desc = "::" })
map("n", "<leader>c", "<cmd>bd!<cr>", { desc = "Close current buffer" })
map("n", "<leader>q", "<cmd>q!<cr>", { desc = "Quit neovim" })
map("n", "<leader>r", ":%s/<c-r><c-w>", { desc = "Search & replace word" })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Write file" })
map("x", "<leader>r", 'y:%s/<c-r>"', { desc = "Replace selection" })
map("x", "<leader>s", ":sort<cr>", { desc = "Sort selection" })

-- Conform
local conform = require("conform")
map("n", "<leader>f", function()
	conform.format({ async = true })
end, { desc = "Format buffer" })

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>t", "<cmd>Telescope<cr>", { desc = "Telescope" })
-- map("n", "<leader>td", builtin.diagnostics, { desc = "Search diagnostics" })
-- map("n", "<leader>tf", builtin.find_files, { desc = "Find files" })
-- map("n", "<leader>tg", builtin.live_grep, { desc = "Live grep" })
-- map("n", "<leader>ts", builtin.current_buffer_fuzzy_find, { desc = "Search current file" })

-- Flash
local flash = require("flash")
map("n", "<leader>s", function()
	flash.jump()
end, { desc = "Flash" })

-- Telekasten
-- Launch panel if nothing is typed after <leader>z
map("n", "<leader>z", "<cmd>Telekasten panel<CR>", { desc = "Telekasten" })

-- Most used functions
-- map("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", { desc = "Find notes" })
-- map("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>", { desc = "Search notes" })
-- map("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>", { desc = "Goto today" })
-- map("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>", { desc = "Follow link" })
-- map("n", "<leader>zn", "<cmd>Telekasten new_note<CR>", { desc = "New note" })
-- map("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", { desc = "Show backlinks" })

-- Call insert link automatically when we start typing a link
-- map("i", "[[", "<cmd>Telekasten insert_link<CR>")
