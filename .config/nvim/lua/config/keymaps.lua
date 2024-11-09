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
map("n", "<leader>td", builtin.diagnostics, { desc = "Search diagnostics" })
map("n", "<leader>tf", builtin.find_files, { desc = "Find files" })
map("n", "<leader>tg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>ts", builtin.current_buffer_fuzzy_find, { desc = "Search current file" })

-- Telescope LSP
map("n", "<leader>ls", builtin.lsp_document_symbols, { desc = "Document symbols" })

-- Flash
local flash = require("flash")
map("n", "<leader>ss", function()
	flash.jump()
end, { desc = "Jump" })
map("n", "<leader>st", function()
	flash.treesitter()
end, { desc = "Treesitter" })

-- Obsidian
map("n", "<leader>zb", "<cmd>ObsidianBacklinks<cr>", { desc = "Backlinks" })
map("n", "<leader>zd", "<cmd>ObsidianDailies<cr>", { desc = "Open dailies" })
map("n", "<leader>zl", "<cmd>ObsidianLinks<cr>", { desc = "Links" })
map("n", "<leader>zn", "<cmd>ObsidianNew<cr>", { desc = "New note" })
map("n", "<leader>zq", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Quick Switch" })
map("n", "<leader>zs", "<cmd>ObsidianSearch<cr>", { desc = "Search notes" })
