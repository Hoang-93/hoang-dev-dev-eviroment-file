return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "jose-elias-alvarez/null-ls.nvim", -- Thêm null-ls
    "nvim-lua/plenary.nvim", -- Dependency for null-ls
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")
    local null_ls = require("null-ls")
    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",

        "cssls",
        "tailwindcss",
        -- "svelte",
        "lua_ls",
        -- "graphql",
        "emmet_ls",
        -- "prismals",
        -- "pyright",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        -- "isort", -- python formatter
        -- "black", -- python formatter
        -- "pylint",
        -- "eslint_d",
      },
    })

    -- null_ls.setup({
    --   sources = {
    --     null_ls.builtins.diagnostics.cspell.with({
    --       -- filetypes = { "javascript", "typescript", "lua", "text" },
    --       filetypes = { "lua", "text" },
    --     }),
    --   },
    -- })
  end,
}
