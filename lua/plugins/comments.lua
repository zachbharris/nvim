return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				pre_hook = function()
					return require("ts_context_commentstring.internal").calculate_commentstring()
				end,
			})
		end,
	},
	{
		"terrortylor/nvim-comment",
		setup = function()
			require("nvim_comment").setup({
				comment_empty = false,
			})
		end,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
}
