return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {
		home = vim.fn.expand("~/Library/Mobile Documents/com~apple~CloudDocs/zk"),

		new_note_filename = "uuid-title",
		uuid_type = "rand",
		uuid_sep = "|",

		command_palette_theme = "dropdown",
		auto_set_filetype = false,
		filename_space_subst = "-",
		filename_small_case = true,
		sort = "modified",
		follow_creates_nonexisting = false,

		template_new_note = vim.fn.expand("~/Library/Mobile Documents/com~apple~CloudDocs/zk/templates/new.md"),
	},
	keys = {
		{ "<leader>z", "<cmd>Telekasten panel<cr>", desc = "telekasten" },
	},
}
