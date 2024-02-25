return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		config = function()
			require("plugins.autopairs.config")
		end,
	},
}
