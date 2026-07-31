local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.harfbuzz_features = { 
  'calt = 0', 
  'clig = 0', 
  'liga = 0',
}

config.initial_cols = 80
config.initial_rows = 50
config.font_size = 12

config.color_scheme = 'tokyonight_night'

--[[
config.unix_domains = {
  {
    name = 'persistent-backend',
  },
}

config.default_domain = 'persistent-backend'
]]--

config.term = 'xterm-256color'

return config
