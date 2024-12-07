return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {
		auto_set_filetype = false,
		command_palette_theme = "dropdown",
		filename_small_case = true,
		filename_space_subst = "-",
		follow_creates_nonexisting = false,
		home = vim.fn.expand("~/Library/Mobile Documents/com~apple~CloudDocs/zk"),
		new_note_filename = "uuid-title",
		show_tags_theme = "dropdown",
		sort = "modified",
		template_new_note = vim.fn.expand("~/Library/Mobile Documents/com~apple~CloudDocs/zk/templates/new.md"),
		uuid_sep = "|",
		uuid_type = "rand",
	},
	keys = {
		{ "<leader>z", "<cmd>Telekasten panel<cr>", desc = "telekasten" },
	},
}
