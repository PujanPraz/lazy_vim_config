-- detect Django templates as htmldjango
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.html",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, 20, false)
    for _, line in ipairs(lines) do
      if line:match("{%%") or line:match("{{") then
        vim.bo.filetype = "htmldjango"
        break
      end
    end
  end,
})
