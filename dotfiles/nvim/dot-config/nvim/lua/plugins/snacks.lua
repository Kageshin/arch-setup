-- lazy.nvim
return {
  "folke/snacks.nvim",
  priority = 1000,
  ---@type snacks.Config
  opts = {
    input = {
        enabled = true,
      -- your input configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    picker = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    termianl = { enabled = false },
    lazygit = { enabled = false },
  }
}
