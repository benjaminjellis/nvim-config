---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  hl_override = {
    Operator = { fg = "vibrant_green" },
    Comment = { fg = "light_grey" },
  },
  nvdash = {
    load_on_startup = true,
  },
}
vim.g.rustaceanvim = {
  tools = {},
  server = {
    on_attach = function(client, _)
      client.server_capabilities.semanticTokensProvider = nil
    end,
    settings = {
      ["rust-analyzer"] = {},
    },
  },
  dap = {},
}

vim.g.haskell_tools = {
  hls = {
    on_attach = function(client, _, _)
      client.server_capabilities.semanticTokensProvider = nil
    end,
    -- ...
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
vim.wo.relativenumber = true
vim.opt.swapfile = false

return M
