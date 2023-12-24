return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "astro", "cssls", "html", "jsonls", "tailwindcss"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.tsserver.setup({})
      lspconfig.astro.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.lua_ls.setup({})
    end
  }
}
