require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<Up>", "<Nop>")
map("i", "<Left>", "<Nop>")
map("i", "<Right>", "<Nop>")
map("i", "<Down>", "<Nop>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
