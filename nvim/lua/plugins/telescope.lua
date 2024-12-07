return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	opts = {
		defaults = require("telescope.themes").get_ivy({ layout_config = { height = 0.5 } }),
	},
	keys = {
		{ "<leader>t", "<cmd>Telescope<cr>", desc = "telescope" },
	},
}
