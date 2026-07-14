-- auto create pyrightconfig.json and install django-stubs if venv exists
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    local venv = vim.fn.getcwd() .. "/.venv"
    local config = vim.fn.getcwd() .. "/pyrightconfig.json"
    if vim.fn.isdirectory(venv) == 1 then
      -- create pyrightconfig.json if not exists
      if vim.fn.filereadable(config) == 0 then
        local file = io.open(config, "w")
        if file then
          file:write([[{
  "venvPath": ".",
  "venv": ".venv",
  "reportAttributeAccessIssue": "none",
  "reportGeneralTypeIssues": "none",
  "reportArgumentType": "none",
  "reportIncompatibleMethodOverride": "none",
  "useLibraryCodeForTypes": true
}
]])
          file:close()
          vim.notify("Created pyrightconfig.json", vim.log.levels.INFO)
        end
      end
      -- auto install django-stubs if not installed
      local stubs = venv .. "/lib/python3.12/site-packages/django-stubs"
      if vim.fn.isdirectory(stubs) == 0 then
        vim.notify("Installing django-stubs...", vim.log.levels.INFO)
        vim.fn.jobstart("uv pip install django-stubs", {
          cwd = vim.fn.getcwd(),
          detach = true,
          on_exit = function()
            vim.notify("django-stubs installed!", vim.log.levels.INFO)
          end,
        })
      end
    end
  end,
})

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
