require("hoangdev.core")
require("hoangdev.lazy")
-- init.lua

-- Thiết lập phương pháp fold theo indent
-- vim.o.foldmethod = "indent"

-- Toggle fold tại dòng hiện tại bằng <leader>z
-- vim.api.nvim_set_keymap("n", "<leader>z", ":set foldmethod=indent<CR>za", { noremap = true, silent = true })
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99 -- Optional: Set the starting fold level
