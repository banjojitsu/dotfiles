return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader>s",
			mode = { "n", "x" },
			function()
				require("flash").jump()
			end,
			desc = "flash",
		},
	},
}
