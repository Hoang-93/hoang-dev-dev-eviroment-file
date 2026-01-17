return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
      ellipsis = "…",
    },
    keys = {
      Up = " ",
      Down = " ",
      Left = " ",
      Right = " ",
      C = "󰘴 ",
      M = "󰘵 ",
      D = "󰘳 ",
      S = "󰘶 ",
      CR = "󰌑 ",
      Esc = "󱊷 ",
    },
    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 3,
      align = "left",
    },
    show_help = true,
    show_keys = true,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },

    spec = {
      { "+", hidden = true },
      { "e", hidden = true },
    },
  },

  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- Add keymaps using the new spec
    wk.add({
      { "<leader>e", group = "󰘴 Explorer" },
      { "<leader>ee", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
      { "<leader>ef", "<cmd>NvimTreeFindFile<cr>", desc = "Find File in Explorer" },
      { "<leader>er", "<cmd>NvimTreeRefresh<cr>", desc = "Refresh Explorer" },
      { "<leader>ec", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse Explorer" },
      -- === FILE OPERATIONS ===
      { "<leader>f", group = "󰈞 Find" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Fuzzy find recent files" },
      { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find string in cwd" },
      { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in cwd" },
      { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find todos" },

      -- === SEARCH ===
      { "<leader>s", group = "󰊄 Search" },
      { "<leader>ss", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in Buffer" },
      { "<leader>sp", "<cmd>Telescope projects<cr>", desc = "Search Projects" },

      -- === NOTES ===
      { "<leader>n", group = "󰠮 Notes" },
      { "<leader>nn", "<cmd>enew<cr>", desc = "New Note" },
      { "<leader>nf", "<cmd>Telescope find_files cwd=~/notes<cr>", desc = "Find Notes" },

      -- === TERMINAL ===
      { "<leader>t", group = "󰆍 Terminal" },
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Floating Terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },

      -- -- === GIT ===
      -- { "<leader>g", group = "󰊢 Git" },
      -- { "<leader>gs", "<cmd>Git status<cr>", desc = "Git Status" },
      -- { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git Commit" },
      -- { "<leader>gp", "<cmd>Git push<cr>", desc = "Git Push" },
      -- { "<leader>gl", "<cmd>Git pull<cr>", desc = "Git Pull" },
      -- { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
      -- { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git Diff" },
      -- { "<leader>gh", "<cmd>Telescope git_commits<cr>", desc = "Git History" },
      -- { "<leader>gB", "<cmd>Telescope git_branches<cr>", desc = "Git Branches" },

      -- === LSP ===
      { "<leader>l", group = "󰰎 LSP" },
      { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to Definition" },
      { "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "Find References" },
      { "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Go to Implementation" },
      { "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover Documentation" },
      { "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature Help" },
      { "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format Code" },
      { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
      { "<leader>ln", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename Symbol" },
      { "<leader>lD", "<cmd>lua vim.lsp.buf.type_definition()<cr>", desc = "Type Definition" },

      -- === BUFFERS ===
      { "<leader>b", group = "󰓩 Buffers" },
      { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "List Buffers" },
      { "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete Buffer" },
      { "<leader>bn", "<cmd>bnext<cr>", desc = "Next Buffer" },
      { "<leader>bp", "<cmd>bprevious<cr>", desc = "Previous Buffer" },
      { "<leader>bw", "<cmd>write<cr>", desc = "Save Buffer" },

      -- === WINDOWS ===
      { "<leader>w", group = "󰖲 Windows" },
      { "<leader>wh", "<C-w>h", desc = "Move Left" },
      { "<leader>wj", "<C-w>j", desc = "Move Down" },
      { "<leader>wk", "<C-w>k", desc = "Move Up" },
      { "<leader>wl", "<C-w>l", desc = "Move Right" },
      { "<leader>ws", "<cmd>split<cr>", desc = "Horizontal Split" },
      { "<leader>wv", "<cmd>vsplit<cr>", desc = "Vertical Split" },
      { "<leader>wc", "<cmd>close<cr>", desc = "Close Window" },
      { "<leader>wo", "<cmd>only<cr>", desc = "Close Other Windows" },
      { "<leader>w=", "<C-w>=", desc = "Equalize Windows" },

      -- === DEBUG ===
      { "<leader>d", group = "Debug" },
      { "<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
      { "<leader>dc", "<cmd>DapContinue<cr>", desc = "Continue" },
      { "<leader>di", "<cmd>DapStepInto<cr>", desc = "Step Into" },
      { "<leader>do", "<cmd>DapStepOver<cr>", desc = "Step Over" },
      { "<leader>dO", "<cmd>DapStepOut<cr>", desc = "Step Out" },
      { "<leader>dr", "<cmd>DapRestart<cr>", desc = "Restart" },
      { "<leader>ds", "<cmd>DapTerminate<cr>", desc = "Stop" },

      -- === REFACTOR ===
      { "<leader>r", group = " Refactor" },
      { "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename Symbol" },
      { "<leader>rf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format File" },

      -- === QUICK ACTIONS ===
      { "<leader>q", group = " Quick" },
      { "<leader>qq", "<cmd>qa<cr>", desc = "Quit All" },
      { "<leader>qw", "<cmd>wqa<cr>", desc = "Save & Quit All" },
      { "<leader>qf", "<cmd>qa!<cr>", desc = "Force Quit All" },

      -- === VISUAL MODE MAPPINGS ===
      { "<leader>g", group = "󰊢 Git", mode = "v" },
      { "<leader>gs", "<cmd>'<,'>Git blame<cr>", desc = "Git Blame Selection", mode = "v" },

      { "<leader>c", group = "󰅩 Code", mode = "v" },
      { "<leader>cf", "<cmd>'<,'>lua vim.lsp.buf.format()<cr>", desc = "Format Selection", mode = "v" },
      { "<leader>ca", "<cmd>'<,'>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action", mode = "v" },

      -- === GLOBAL KEYMAPS (no leader) ===
      { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to Definition" },
      { "gr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "Find References" },
      { "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Go to Implementation" },
      { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover Documentation" },

      -- === DIAGNOSTIC NAVIGATION ===
      { "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Previous Diagnostic" },
      { "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic" },
      {
        "[e",
        "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<cr>",
        desc = "Previous Error",
      },
      {
        "]e",
        "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<cr>",
        desc = "Next Error",
      },
    })
  end,
}
