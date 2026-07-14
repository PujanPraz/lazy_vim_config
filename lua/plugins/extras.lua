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
  {
    "tweekmonster/django-plus.vim",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = false,
          auto_trigger = false,
        },
        panel = { enabled = false },
      })
    end,
  },
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    cmd = { "DBUI", "DBUIToggle" },
    keys = {
      { "<leader>db", "<cmd>DBUIToggle<cr>", desc = "Toggle DB UI" },
    },
    config = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = "~/.local/share/db_ui"
    end,
  },
}
