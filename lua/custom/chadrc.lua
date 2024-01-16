---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  hl_override = {
    Operator = { fg = "vibrant_green" },
    -- Identifier= {fg = "white"},
    -- Variable = { fg = "pink"},
    -- Comment = { fg = "light_grey"}
  },
  nvdash = {
    load_on_startup = true,
  },
}
vim.g.rustaceanvim = {
  tools = {},
  server = {
    on_attach = function(client, bufnr)
      client.server_capabilities.semanticTokensProvider = nil
    end,
    settings = {
      ["rust-analyzer"] = {},
    },
  },
  dap = {},
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
vim.wo.relativenumber = true
vim.opt.swapfile = false
return M
