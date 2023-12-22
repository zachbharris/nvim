local keymap = vim.keymap.set

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

