-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- persistent terminal that works from any file
vim.keymap.set("n", "<C-/>", function()
  require("snacks").terminal.toggle(nil, { cwd = vim.fn.getcwd() })
end, { desc = "Toggle terminal" })
