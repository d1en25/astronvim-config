require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<C-q>", "<cmd>qa!<cr>", { desc = "Quit" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "\\", "<C-w>v", { desc = "Split window verticaly" })
map("n", "|", "<C-w>s", { desc = "Split window" })
map("n", "<leader>q", "<C-w>q", { desc = "Quit a window" })

map("n", "<A-s>", ":SessionSave <cr>", { desc = "Save session" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
