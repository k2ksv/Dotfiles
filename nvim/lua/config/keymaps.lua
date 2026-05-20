-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- Save
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Quit
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- File explorer
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- Find files
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")

-- Live grep
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")

-- Terminal
vim.keymap.set("n", "<leader>t", ":terminal<CR>")

-- Better split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Compile and run C++
--
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")
  vim.cmd("split")
  vim.cmd("terminal g++ -std=c++17 -O2 -Wall % -o main && ./main")
end)
