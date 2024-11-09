local g = vim.g
-- Disable netrw, using mini-files
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

local opt = vim.opt
opt.conceallevel = 2 -- Enabled for obsidian to work correctly
opt.cursorline = true -- Show which line cursor is on
opt.expandtab = true -- Use spaces instead of tabs
opt.ignorecase = true -- Ignore case when searching
opt.number = true -- Show line numbers
opt.scrolloff = 4 -- Minimal number of lines to keep
opt.shiftwidth = 2 -- Size of an indent
opt.signcolumn = "yes"
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.wrap = false -- Disable line wrap
