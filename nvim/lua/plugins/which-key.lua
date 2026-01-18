return {
  -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  -- event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  event = "VeryLazy",
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.opt.timeoutlen
    delay = 0,
    icons = {
      mappings = vim.g.have_nerd_font,
      breadcrumb = "»",
      separator = "➜",
      group = "+",
      ellipsis = "…",
    },

    -- Document existing key chains
    spec = {
      { '<leader>c', group = '[C]ode' },
      { '<leader>s', group = 'Search File' },
      { '<leader>t', group = 'Toggle' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
