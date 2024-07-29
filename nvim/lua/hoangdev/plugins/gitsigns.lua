return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function mapho(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      -- Navigation
      mapho("n", "]h", gs.next_hunk, "Next Hunk")
      mapho("n", "[h", gs.prev_hunk, "Prev Hunk")

      -- Actions
      mapho("n", "<leader>hs", gs.stage_hunk, "Stage hunk")
      mapho("n", "<leader>hr", gs.reset_hunk, "Reset hunk")
      mapho("v", "<leader>hs", function()
        gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Stage hunk")
      mapho("v", "<leader>hr", function()
        gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Reset hunk")

      mapho("n", "<leader>hS", gs.stage_buffer, "Stage buffer")
      mapho("n", "<leader>hR", gs.reset_buffer, "Reset buffer")

      mapho("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk")

      mapho("n", "<leader>hp", gs.preview_hunk, "Preview hunk")

      mapho("n", "<leader>hb", function()
        gs.blame_line({ full = true })
      end, "Blame line")
      mapho("n", "<leader>hB", gs.toggle_current_line_blame, "Toggle line blame")

      mapho("n", "<leader>hd", gs.diffthis, "Diff this")
      mapho("n", "<leader>hD", function()
        gs.diffthis("~")
      end, "Diff this ~")

      -- Text object
      mapho({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
    end,
  },
}
