-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
local opt = vim.opt

-- File Name at the top
opt.winbar = "%=%m %f"

-- Code Folding
opt.foldlevel = 99
opt.foldmethod = "indent"
opt.foldenable = true
opt.foldexpr = "nvim_treesitter#foldexpr()"
