local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"

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
config.font_size = 12
config.line_height = 1.5

config.keys = {
	{ key = "[", mods = "CMD", action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "]", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{ key = "RightArrow", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Prev" }) },
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{ key = "UpArrow", mods = "CTRL|SHIFT", action = wezterm.action.AdjustPaneSize({ "Up", 1 }) },
	{ key = "DownArrow", mods = "CTRL|SHIFT", action = wezterm.action.AdjustPaneSize({ "Down", 1 }) },
	{ key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action.AdjustPaneSize({ "Right", 1 }) },
	{ key = "LeftArrow", mods = "CTRL|SHIFT", action = wezterm.action.AdjustPaneSize({ "Left", 1 }) },
}
local dimmer = { brightness = 0.02 }
config.background = {
	{
		source = {
			File = "/Users/levietanh/Downloads/goku.jpg",
		},
		hsb = dimmer,
		attachment = { Parallax = 0 },
		width = "100%",
	},
}

return config
