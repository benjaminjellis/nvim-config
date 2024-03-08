local lspconfig = require "lspconfig"

-- note: to use the ocaml lsp it needs to be installed in the switch being used for a given project
lspconfig.ocamllsp.setup {
  on_attach = function(client, _)
    client.server_capabilities.semanticTokensProvider = nil
  end,
}

-- json lsp for formatting json
lspconfig.jsonls.setup {}
lspconfig.pyright.setup {}


