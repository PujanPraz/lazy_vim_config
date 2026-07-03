return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
_____   __          ___    ______            
___  | / /____________ |  / /__(_)______ ___ 
__   |/ /_  _ \  __ \_ | / /__  /__  __ `__ \
_  /|  / /  __/ /_/ /_ |/ / _  / _  / / / / /
/_/ |_/  \___/\____/_____/  /_/  /_/ /_/ /_/ 
                                             ]],
      },
    },
  },
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#7aa2f7", bold = true }),
}
