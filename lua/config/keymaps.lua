vim.g.mapleader = " "

local keymap = vim.keymap.set

-- move selection up/down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

-- splits
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split vertical" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split horizontal" })
keymap("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

-- lsp
keymap("n", "K", vim.lsp.buf.hover, { desc = "Preview definition" })
keymap("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap("n", "<leader>gr", vim.lsp.buf.references, { desc = "Definition references" })
keymap("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code action" })
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open float" })

-- neo-tree
keymap("n", "<C-n>", ":Neotree filesystem toggle right<CR>", { desc = "Toggle filesystem tree", silent = true })

-- bufferline
keymap("n", "BX", ":Bdelete<CR>", { desc = "Close current buffer", silent = true })
keymap("n", "Bh", ":BufferLineCyclePrev<CR>", { desc = "Go to previous buffer", silent = true })
keymap("n", "Bl", ":BufferLineCycleNext<CR>", { desc = "Go to next buffer", silent = true })
keymap("n", "Bp", ":BufferLinePick<CR>", { desc = "Pick buffer", silent = true })
keymap("n", "Bxo", ":BufferLineCloseOthers<CR>", { desc = "Close all other visibile buffers", silent = true })
keymap(
  "n",
  "Bxh",
  ":BufferLineCloseLeft<CR>",
  { desc = "Close all visible buffers to the left of the current", silent = true }
)
keymap(
  "n",
  "Bxl",
  ":BufferLineCloseRight<CR>",
  { desc = "Close all visible buffers to the right of the current", silent = true }
)

-- gitsigns
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview git diff" })
keymap("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle git blame for current line" })

-- lazygit
keymap("n", "<leader>lg", ":LazyGit<CR>", { desc = "Toggle LazyGit", silent = true })

-- none-ls
keymap("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer", silent = true })

-- hop
keymap("", "f", "<cmd>lua require'hop'.hint_char1()<cr>", { silent = true })
keymap("", "F", "<cmd>lua require'hop'.hint_char2()<cr>", { silent = true })

-- toggleterm
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
