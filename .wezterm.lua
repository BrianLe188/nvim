local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
config.colors = require("kanagawa")
-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 80
-- and finally, return the configuration to wezterm
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.font_size = 15
config.line_height = 1.5

wezterm.on("maximize-window", function(window, pane)
	window:maximize()
end)

config.keys = {
	{
		key = "M", -- Phím tắt
		mods = "CTRL|SHIFT", -- Tổ hợp phím (Ctrl + Shift + M)
		action = wezterm.action.EmitEvent("maximize-window"),
	},
}

return config
