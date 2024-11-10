return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {
		-- Main paths
		dailies = "dailies",
		home = vim.fn.expand("~/zk"),

		-- Note creation settings
		filename_small_case = true,
		filename_space_subst = "-",
		new_note_filename = "uuid-title",
		uuid_type = "rand",

		-- Note templates
		template_new_note = "templates/new.md",
		template_new_daily = "templates/daily.md",
	},
}
