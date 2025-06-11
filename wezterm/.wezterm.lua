-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
-- This will hold the configuration.
local config = wezterm.config_builder()

config.front_end = "OpenGL"
config.max_fps = 144
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 60
config.cursor_blink_rate = 800
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.term = "xterm-256color" -- Set the terminal type

config.font = wezterm.font("Iosevka Custom (clike) Extended")
config.cell_width = 0.9
config.window_background_opacity = 0.9
config.prefer_egl = true
config.font_size = 12.0

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- tabs
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true

config.inactive_pane_hsb = {
	hue = 0.2,
 	saturation = 1.0,
 	brightness = 0.3,
}

-- color scheme toggling
wezterm.on("toggle-colorscheme", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	if overrides.color_scheme == "Snazzy" then
		overrides.color_scheme = "Kibble"
	else
		overrides.color_scheme = "Snazzy"
	end
	window:set_config_overrides(overrides)
end)

-- keymaps
config.leader = { key = 'Escape', mods = 'SHIFT', timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitPane({
			direction = "Left",
			size = { Percent = 50 },
		}),
	},
	{
		key = "j",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "k",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitPane({
			direction = "Up",
			size = { Percent = 50 },
		}),
	},
	{
		key = "l",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "w",
		mods = "CTRL|ALT",
		action = act.CloseCurrentPane{ confirm = true },
	},
	{
		key = "t",
		mods = "CTRL",
		action = act.SpawnTab "CurrentPaneDomain",
	},
	{
		key = "w",
		mods = "CTRL",
		action = act.CloseCurrentTab { confirm = true },
	},
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = act.Nop,
	},
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "h",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = ";",
		mods = "CTRL",
		action = act.RotatePanes("Clockwise")
	},
	{
		key = ":",
		mods = "CTRL|SHIFT",
		action = act.RotatePanes("CounterClockwise")
	},
	{
		key = "E",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.EmitEvent("toggle-colorscheme"),
	},
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
    {
        key = 'r',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ReloadConfiguration,
    },
	{
		key = " ",
		mods = "CTRL",
		action = wezterm.action.SendKey({
			key = " ",
			mods = "CTRL",
		}),
	},
	{
		key = " ",
		mods = "CTRL|ALT",
		action = wezterm.action.SendKey({
			key = " ",
			mods = "CTRL|ALT",
		}),
	},
	{
		key = " ",
		mods = "SHIFT",
		action = wezterm.action.SendKey({
			key = " ",
			mods = "SHIFT",
		}),
	},
	{
		key = "Backspace",
		mods = "SHIFT",
		action = wezterm.action.SendKey({
			key = "Backspace",
			mods = "SHIFT",
		}),
	},
	{
		key = " ",
		mods = "ALT",
		action = wezterm.action.SendKey({
			key = " ",
			mods = "ALT",
		}),
	},
	{ key = "9", mods = "CTRL", action = act.PaneSelect },
	{ key = "`", mods = "CTRL", action = act.ShowDebugOverlay },
	{
		key = "o",
		mods = "LEADER",
		-- toggling opacity
		action = wezterm.action_callback(function(window, _)
			local overrides = window:get_config_overrides() or {}
			if overrides.window_background_opacity == 1.0 then
				overrides.window_background_opacity = 0.95
			else
				overrides.window_background_opacity = 1.0
			end
			window:set_config_overrides(overrides)
		end),
	},
}

config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 150,
  fade_out_function = 'EaseOut',
  fade_out_duration_ms = 150,
}
-- For example, changing the color scheme:
config.color_scheme = "Kibble"
config.colors = {
    visual_bell = '#440000',

    cursor_fg = "#281733",
    cursor_bg = "#ff50ff",
    cursor_border = "#00ff00",
--    selection_fg = "black",
--    selection_bg = "#fffacd",
    selection_fg = 'rgba(70% 80% 00%)',
    selection_bg = 'rgba(40% 40% 90% 30%)',
    scrollbar_thumb = "#00FF00",
    split = "#444444",
    compose_cursor = 'green',
	tab_bar = {
--		background = "#0c0b0f",
		background = "#ff0000",
		-- background = "rgba(0, 0, 0, 0%)",
		active_tab = {
			bg_color = "#0c0b0f",
			fg_color = "#bea3c7",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#0c0b0f",
			fg_color = "#f8f2f5",
			intensity = "Normal",
			underline = "None",
			italic = true,
			strikethrough = false,
		},

		new_tab = {
			-- bg_color = "rgba(59, 34, 76, 50%)",
			bg_color = "#0c0b0f",
			fg_color = "white",
		},
	},
}

config.window_frame = {
	font = wezterm.font({ family = "Iosevka Custom", weight = "Regular" }),
--	active_titlebar_bg = "#0c0b0f",
	active_titlebar_bg = "#232323",
}

-- config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_decorations = "NONE | RESIZE"
config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 80
-- config.window_background_image = "C:/dev/misc/berk.png"
-- config.window_background_image_hsb = {
-- 	brightness = 0.1,
-- }

-- wezterm.on("gui-startup", function(cmd)
-- 	local args = {}
-- 	if cmd then
-- 		args = cmd.args
-- 	end
--
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	-- window:gui_window():maximize()
-- 	-- window:gui_window():set_position(0, 0)
-- end)

config.set_environment_variables = {
  -- This changes the default prompt for cmd.exe to report the
  -- current directory using OSC 7, show the current time and
  -- the current directory colored in the prompt.
--  prompt = '$E]7;file://localhost/$P$E\\$E[32m$T$E[0m $E[35m$P$E[36m$_$G$E[0m ',
}

-- and finally, return the configuration to wezterm
return config
