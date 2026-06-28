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
        },
      },
    },
  },
}
