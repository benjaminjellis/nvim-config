return {
  { "Saecki/crates.nvim", enabled = false },
  { "tamasfe/taplo", enabled = false },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      -- stylua: ignore
      keys = {
        { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
        { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
      },
      config = function()
        require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/bin/python"))
        table.insert(require("dap").configurations.python, {
          justMyCode = false,
        })
      end,
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- ocamllsp = {},
        jsonls = {},
        yamlls = {},
        -- TODO: figure out how to turn off the messages that harper sends
        --   harper_ls = {
        --     settings = {
        --       ["harper-ls"] = {
        --         linters = {
        --           spell_check = true,
        --           spelled_numbers = false,
        --           an_a = true,
        --           sentence_capitalization = false,
        --           unclosed_quotes = true,
        --           wrong_quotes = false,
        --           long_sentences = false,
        --           repeated_words = true,
        --           spaces = true,
        --           matcher = true,
        --         },
        --       },
        --     },
        --   },
      },
    },
  },
}
