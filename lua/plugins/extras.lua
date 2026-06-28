return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_mouse_mappings = 0 -- disable mouse
      vim.g.VM_maps = {
        ["Add Cursor At Pos"] = "<C-LeftMouse>", -- Ctrl+Click instead
      }
    end,
  },
}
