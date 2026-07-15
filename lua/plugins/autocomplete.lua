-- disable ctrl+space treesitter selection to free it for autocomplete
vim.keymap.del("n", "<C-Space>", { silent = true })
vim.keymap.del("x", "<C-Space>", { silent = true })

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources({
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip",  priority = 750 },
      { name = "buffer",   priority = 500 },
      { name = "path",     priority = 250 },
    })
    opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
      ["<CR>"] = cmp.mapping(function(fallback)
        if cmp.visible() and cmp.get_active_entry() then
          cmp.confirm({ select = false })
        else
          fallback()
        end
      end),
      ["<C-Space>"] = cmp.mapping.complete(),
    })
  end,
}
