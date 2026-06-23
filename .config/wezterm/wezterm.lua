local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.harfbuzz_features = { 
  'calt = 0', 
  'clig = 0', 
  'liga = 0',
}

config.initial_cols = 80
config.initial_rows = 50

config.font_size = 16
-- config.color_scheme = 'Batman'
config.color_scheme = 'Catppuccin Mocha'

return config
