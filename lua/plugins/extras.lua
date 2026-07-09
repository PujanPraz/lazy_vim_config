return {
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
    "okuuva/auto-save.nvim",
    opts = {
      enabled = true,
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" },
        defer_save = { "InsertLeave", "TextChanged" },
      },
      debounce_delay = 1000,
    },
  },
  {
    "smoka7/multicursors.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "smoka7/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern" },
    keys = {
      {
        "<A-d>",
        "<cmd>MCstart<cr>",
        desc = "Multi cursor",
      },
    },
  },
}
