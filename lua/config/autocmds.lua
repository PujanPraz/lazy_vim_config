-- disable format on save for html and django templates
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "htmldjango" },
  callback = function()
    vim.b.autoformat = false
  end,
})
