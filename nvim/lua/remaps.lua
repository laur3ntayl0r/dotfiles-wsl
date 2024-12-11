-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Shortcuts to open Netrw in normal mode
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>he", vim.cmd.Hex)
vim.keymap.set("n", "<leader>ve", vim.cmd.Vex)
