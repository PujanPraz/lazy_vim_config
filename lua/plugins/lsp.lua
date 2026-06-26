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
        filetypes = { "css", "scss", "less" },
      },
      emmet_ls = {
        filetypes = { "css", "scss", "less", "jsx", "tsx" },
      },
    },
  },
}
