return {
  {
    "gleam-lang/gleam.vim",
  },
  { "Saecki/crates.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        ocamllsp = {},
        jsonls = {},
        yamlls = {},
        -- harper_ls = {
        --   settings = {
        --     ["harper-ls"] = {
        --       linters = {
        --         spell_check = true,
        --         spelled_numbers = false,
        --         an_a = true,
        --         sentence_capitalization = false,
        --         unclosed_quotes = true,
        --         wrong_quotes = false,
        --         long_sentences = false,
        --         repeated_words = true,
        --         spaces = true,
        --         matcher = true,
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
