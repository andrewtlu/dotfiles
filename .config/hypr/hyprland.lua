-- Migrated from hyprland.conf (hyprlang) to hyprland.lua
-- Docs: https://wiki.hypr.land/Configuring/Basics/
-- Place this at ~/.config/hypr/hyprland.lua

------------------------------------------------------------
-- COLORS
------------------------------------------------------------
local colors = {
	foreground = "rgba(ebdbb8ff)",
	background = "rgba(282828ff)",

	color0 = "rgba(282828ff)",
	color1 = "rgba(cc241dff)",
	color2 = "rgba(98971aff)",
	color3 = "rgba(d79921ff)",
	color4 = "rgba(458588ff)",
	color5 = "rgba(b16286ff)",
	color6 = "rgba(689d6aff)",
	color7 = "rgba(a89984ff)",
	color8 = "rgba(928374ff)",
	color9 = "rgba(fb4934ff)",
	color10 = "rgba(b8bb26ff)",
	color11 = "rgba(fabd2fff)",
	color12 = "rgba(83a598ff)",
	color13 = "rgba(d3869bff)",
	color14 = "rgba(8ec07cff)",
	color15 = "rgba(ebdbb8ff)",
}

------------------------------------------------------------
-- MONITORS  (https://wiki.hypr.land/Configuring/Basics/Monitors/)
------------------------------------------------------------
hl.monitor({ output = "DP-4", mode = "2560x1440@59.95", position = "0x0", scale = 1 })
hl.monitor({ output = "eDP-1", mode = "1920x1080@60.01", position = "2560x0", scale = 1 })
hl.monitor({ output = "HDMI-A-2", mode = "1920x1080@60.00", position = "auto", scale = 1 })

------------------------------------------------------------
-- ENVIRONMENT VARIABLES
------------------------------------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("HYPRSHOT_DIR", "Pictures/Screenshots")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")

------------------------------------------------------------
-- MY PROGRAMS
------------------------------------------------------------
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "wofi" -- unfortunately can't get this working with pkill toggle :(
local music = "spotify-launcher" -- kept for reference, unbound in original config
local ide = "code"
local webBrowser = "firefox"
local mainMod = "SUPER"

------------------------------------------------------------
-- AUTOSTART  (https://wiki.hypr.land/Configuring/Basics/Autostart/)
------------------------------------------------------------
hl.on("hyprland.start", function()
	hl.exec_cmd(terminal)
	hl.exec_cmd("waybar & hyprpaper & swaync & hypridle")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("XDG_MENU_PREFIX=arch- kbuildsycoca6")
end)

------------------------------------------------------------
-- LOOK AND FEEL  (https://wiki.hypr.land/Configuring/Basics/Variables/)
------------------------------------------------------------
hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 8,
		border_size = 2,
		col = {
			active_border = colors.color4,
			inactive_border = "rgba(00000000)",
		},
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 0,
		active_opacity = 1.0,
		inactive_opacity = 0.8,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = colors.color0,
		},
		blur = {
			enabled = true,
			size = 10,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},

	dwindle = {
		-- see https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
	},

	master = {
		new_status = "master",
	},

	misc = {
		force_default_wallpaper = 0, -- 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true,
	},

	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification
		touchpad = {
			natural_scroll = true,
		},
	},

	cursor = {
		inactive_timeout = 3,
		no_hardware_cursors = true,
	},
})

------------------------------------------------------------
-- ANIMATIONS  (https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/)
------------------------------------------------------------
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })

------------------------------------------------------------
-- GESTURES  (https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/)
------------------------------------------------------------
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

------------------------------------------------------------
-- WINDOW / LAYER RULES
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/
------------------------------------------------------------
-- these might be broken can't be bothered to fix since 0.53 broke old windowrules
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize", -- ignore maximize requests
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- NOTE: `focus` as a match prop is not explicitly documented as of this writing;
-- verify this still matches "unfocused" windows against the current wiki page,
-- and adjust the prop name if Hyprland renamed/removed it.
hl.window_rule({
	name = "no-shadow-unfocused",
	match = { focus = false },
	no_shadow = true,
})

hl.layer_rule({
	name = "no-anim-hyprshot-selection",
	match = { namespace = "selection" },
	no_anim = true,
})

------------------------------------------------------------
-- KEYBINDINGS  (https://wiki.hypr.land/Configuring/Basics/Binds/)
------------------------------------------------------------
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(ide))
hl.bind(mainMod .. " + W", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("pkill " .. menu .. " || " .. menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()) -- dwindle
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.layout("swapsplit"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(webBrowser))

-- Screenshot binds
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("CTRL + PRINT", hl.dsp.exec_cmd("hyprshot -m output"))

-- Lock screen
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock --grace 0 -v > /tmp/hyprlock-state.log 2>&1"))

-- Color picker
hl.bind("ALT + PRINT", hl.dsp.exec_cmd("hyprpicker -al"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

-- Fullscreen with F11
hl.bind(mainMod .. " + F11", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Move windows within workspace with mainMod + shift + arrow keys
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "d" }))

-- Resize windows with mainMod + ctrl + arrow keys
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.resize({ x = -10, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.resize({ x = 0, y = -10, relative = true }))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.resize({ x = 0, y = 10, relative = true }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
