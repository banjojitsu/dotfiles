return {
	"echasnovski/mini.files",
	version = false,
	lazy = false,
	opts = {
		mappings = {
			go_in = "<right>",
			go_out = "<left>",
		},
		options = {
			use_as_default_explorer = true,
		},
	},
	keys = {
		{
			"<leader>`",
			"<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<cr>",
			mode = "",
			desc = "Open file directory",
		},
	},
}
