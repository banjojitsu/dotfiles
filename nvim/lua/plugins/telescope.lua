return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		--		defaults = require("telescope.themes").get_ivy({ layout_config = { height = 0.5 } }),
		defaults = require("telescope.themes").get_dropdown({
			layout_config = { preview_cutoff = 100 },
		}),
	},
	keys = {
		{ "<leader>t", "<cmd>Telescope<cr>", desc = "telescope" },
	},
}
