return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {
        init_options = {
          provideFormatter = true,
        },
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
          "tsx",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
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
