return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      filesystem = {
        follow_current_file = {
          enabled = true
        }
      }
    })
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>", {})
  end
}

