return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {
		-- Main paths
		dailies = vim.fn.expand("~/zk/dailies"),
		home = vim.fn.expand("~/zk"),

		-- Note creation settings
		filename_small_case = true,
		filename_space_subst = "-",
		new_note_filename = "uuid-title",
		uuid_type = "rand",
		uuid_sep = "|",

		auto_set_filetype = false,
		follow_creates_nonexisting = false,

		-- Note templates
		template_new_note = vim.fn.expand("~/zk/templates/new.md"),
		template_new_daily = vim.fn.expand("~/zk/templates/daily.md"),
	},
}
