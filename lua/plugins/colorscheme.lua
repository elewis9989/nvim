return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  { "savq/melange-nvim" },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "melange",
    },
  },
}
