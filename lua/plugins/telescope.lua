return {
  "nvim-telescope/telescope.nvim", tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules" }
      }
    })

    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
  end
}
