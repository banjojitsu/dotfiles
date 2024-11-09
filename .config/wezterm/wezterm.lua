local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Kanagawa (Gogh)"
config.enable_scroll_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"

return config
