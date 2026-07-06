-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.swapfile = false

-- auto save all buffers after LSP file rename
vim.api.nvim_create_autocmd("User", {
  pattern = "LspFileOperationsDone",
  callback = function()
    vim.cmd("silent! wa")
  end,
})

-- save all buffers after LSP rename request
vim.api.nvim_create_autocmd("LspRequest", {
  callback = function(args)
    if args.data and args.data.request and
       args.data.request.method == "workspace/willRenameFiles" then
      vim.defer_fn(function()
        vim.cmd("silent! wa")
      end, 500)
    end
  end,
})
