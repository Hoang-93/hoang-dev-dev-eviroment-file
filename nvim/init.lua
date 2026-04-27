-- Bootstrap lazy.nvim
require("config.lazy")

-- Load configurations
require("config.options")
require("config.keymaps")

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldenable = true
