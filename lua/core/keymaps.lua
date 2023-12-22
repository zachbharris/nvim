vim.g.mapleader = " "

local keymap = vim.keymap.set

-- move selection up/down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- general keymaps
keymap("n", "x",'"_x')
keymap("n", "<leader>+", "<C-a>")
keymap("n", "<leader>-", "<C-x>")

keymap("n", "<leader>sv", "<C-w>v", { desc = "split vertical" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "split horizontal" })
keymap("n", "<ledaer>se", "<C-w>=", { desc = "make split windows equal width" })
keymap("n", "<leader>sx", ":close<CR>")
