return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		spec = {
			{ "<leader>t", group = "Telescope" },
			{ "<leader>s", group = "Flash" },
		},
		icons = { mappings = false },
	},
}
