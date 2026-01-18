return {
    -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    lazy = true,
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    opts = {
        ensure_installed = {
            "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "markdown_inline",
            "query", "vim", "vimdoc", "rust", "regex", "php", "blade",
            -- Next.js/React
            "javascript", "typescript", "tsx", "css", "json", "jsonc", "yaml", "prisma", "latex"
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
    },
}