return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {
        init_options = {
          provideFormatter = false,
        },
        filetypes = { "html", "htmldjango" },
      },
      cssls = {
        settings = {
          css = { validate = true },
          scss = { validate = true },
        },
      },
      emmet_ls = {
        filetypes = {
          "html",
          "css",
          "scss",
          "less",
          "jsx",
          "javascriptreact",
        },
      },
      vtsls = {
        settings = {
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
          },
          javascript = {
            updateImportsOnFileMove = { enabled = "always" },
          },
        },
      },
      lua_ls = {
        filetypes = { "lua" },
      },
    },
  },
}
