return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    vim.g.codeium_disable_bindings = 1
    vim.keymap.set("i", "<C-l>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<C-j>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "C-k>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<C-e>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
    vim.keymap.set("i", "<C-;>", function()
      return vim.fn["codeium#Complete"]()
    end, { expr = true })
  end,
}
