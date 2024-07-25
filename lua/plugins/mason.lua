return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "codelldb",
        "marksman",
        "pyright",
        "json-lsp",
        "yaml-language-server",
        "debugpy",
        "elm-language-server",
        "elm-format",
      },
    },
  },
}
