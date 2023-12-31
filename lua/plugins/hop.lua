return {
  "phaazon/hop.nvim",
  config = function()
    local hop = require("hop")
    hop.setup({
      keys = "etovxqpdygfblzhckisuran",
      term_seq_bias = 0.5,
    })
  end,
}
