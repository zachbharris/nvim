return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			require("telescope").setup({
				defaults = {
					file_ignore_patters = { "node_modules" },
				},
				find_files = {
					hidden = true,
				},
			})

			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Search files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search in files" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
