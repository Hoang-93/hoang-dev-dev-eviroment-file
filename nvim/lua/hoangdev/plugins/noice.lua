return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "muniftanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = false, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
      },
      popup = {
        border = { style = "single" },
        relative = "editor",
        position = {
          row = 0.5,
          col = 0.5,
        },
        size = {
          width = 0.6,
          height = 0.4,
        },
        win_options = {
          winblend = 10,
          cursorline = true,
          signcolumn = "yes",
        },
      },
      messages = {
        enabled = true, -- turn off popup messages
      },
      routes = {
        {
          filter = { event = "msg_show", kind = "error" }, -- Chỉ cho phép thông báo lỗi
          opts = { skip = false }, -- Hiển thị
        },
        {
          filter = { event = "msg_show" }, -- Lọc tất cả các thông báo khác
          opts = { skip = true }, -- Bỏ qua
        },
      },
    })
  end,
}
