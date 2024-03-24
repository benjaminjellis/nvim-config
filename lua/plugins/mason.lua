return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "codelldb",
        "pyright",
        "marksman",
        "json-lsp",
        "yaml-language-server",
      },
    },
  },
}
