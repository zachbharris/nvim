return {
  "edeneast/nightfox.nvim",
  name = "nightfox",
  priority = 1000,
  config = function()
    require("nightfox").setup({

    })
    vim.cmd.colorscheme "carbonfox"
  end,
}
