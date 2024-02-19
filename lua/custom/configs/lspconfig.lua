local lspconfig = require "lspconfig"

lspconfig.ocamllsp.setup {
  on_attach = function(client, _)
    client.server_capabilities.semanticTokensProvider = nil
  end,
}
lspconfig.jsonls.setup {}
--
-- lspconfig.kotlin_language_server.setup {}
