local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "wsl.exe", "-d", "Ubuntu" }
config.font_size = 11.5
config.font = wezterm.font("VictorMono Nerd Font Propo")
config.enable_tab_bar = false
config.color_scheme = "Catppuccin Mocha"
config.window_padding = { left = 6, right = 6, top = 4, bottom = 4 }
config.window_background_opacity = 1
config.window_close_confirmation = "NeverPrompt"
config.audible_bell = "Disabled"
config.enable_wayland = false
config.initial_cols = 120
config.initial_rows = 30
config.scrollback_lines = 10000

config.check_for_updates = false

return config
