local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "AdventureTime"
config.window_decorations = "RESIZE"
config.enable_scroll_bar = false

return config
