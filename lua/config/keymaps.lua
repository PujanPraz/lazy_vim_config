-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- persistent terminal that works from any file
vim.keymap.set("n", "<C-/>", function()
  require("snacks").terminal.toggle(nil, { cwd = vim.fn.getcwd() })
end, { desc = "Toggle terminal" })

-- disable ctrl+space treesitter selection
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    pcall(vim.keymap.del, "n", "<C-Space>")
    pcall(vim.keymap.del, "x", "<C-Space>")
    pcall(vim.keymap.del, "o", "<C-Space>")
  end,
})
