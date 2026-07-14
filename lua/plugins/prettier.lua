return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "djlint" },
      htmldjango = { "djlint" }, -- djlint for django templates
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      json = { "prettier" },
      python = { "ruff_format" },
      sql = { "sqlfmt" },
    },
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },
}
