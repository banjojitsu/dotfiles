return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		defaults = require("telescope.themes").get_ivy({ layout_config = { height = 0.5, preview_cutoff = 10 } }),
	},
}
