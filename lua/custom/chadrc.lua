---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  hl_override = {
    Operator = { fg = "vibrant_green" },
    Variable = { fg = "pink"},
    SpellBad = { underline= true, fg = "red"},
    Comment = { fg = "light_grey"}
  },
  nvdash = {
    load_on_startup = true
  }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
