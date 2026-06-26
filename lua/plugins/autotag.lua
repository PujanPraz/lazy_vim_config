return {
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {
      enable_close = true,      -- Auto close tags
      enable_rename = true,     -- Auto rename pairs of tags (This is what you need)
      enable_close_on_slash = false,
    },
  },
}   
