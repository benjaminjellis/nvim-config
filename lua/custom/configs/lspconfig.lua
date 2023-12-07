local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

require('ionide').setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"
