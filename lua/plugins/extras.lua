return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_mouse_mappings = 0
      vim.g.VM_maps = {
        ["Find Under"] = "<A-d>",
        ["Find Subword Under"] = "<A-d>",
        ["Add Cursor At Pos"] = "<C-LeftMouse>",
      }
    end,
  },
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
}
