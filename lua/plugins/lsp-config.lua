local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = ""
  }
  vim.lsp.buf.execute_command(params)
end

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

      lspconfig.tsserver.setup({
        commands = {
          OrganizeImports = {
            organize_imports,
            description = "Organize Imports"
          }
        },
      })
      lspconfig.astro.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.jsonls.setup({})
    end
  }
}
