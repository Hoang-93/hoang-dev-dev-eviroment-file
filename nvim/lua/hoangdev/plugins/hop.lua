return {
  "hadronized/hop.nvim",
  event = "BufRead",
  config = function()
    require("hop").setup()
    vim.keymap.set("", "f", ":HopChar1CurrentLine<CR>", { remap = true })
    vim.keymap.set("", "t", ":HopChar2<CR>", { remap = true })
  end,
}
