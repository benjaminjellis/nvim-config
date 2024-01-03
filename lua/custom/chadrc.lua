---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  hl_override = {
    Operator = { fg = "vibrant_green" },
    Variable = { fg = "pink"},
    SpellBad = {bg = "red"},
    Comment = { fg = "light_grey"}
  }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
