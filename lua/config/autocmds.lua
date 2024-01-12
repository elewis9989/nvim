-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- LuaSnip Snippet History Fix for tab issue (Seems to work really well, I think.)
local luasnip_fix_augroup = vim.api.nvim_create_augroup("MyLuaSnipHistory", { clear = true })
vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*",
  callback = function()
    if
      -- switched from select mode to normal mode or switched from insert mode
      -- AND previously inside a snipped
      -- AND not currently jumping to another snippet
      ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
      and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
      and not require("luasnip").session.jump_active
    then
      require("luasnip").unlink_current()
    end
  end,
  group = luasnip_fix_augroup,
})

-- Turn off paste-mode when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- Override highlight colors
vim.cmd("highlight Visual cterm=NONE ctermbg=102  ctermfg=16  gui=NONE guibg=#878787 guifg=#000000")
vim.cmd("highlight TelescopeSelection guifg=#1F2233 guibg=#BDA9D4")
