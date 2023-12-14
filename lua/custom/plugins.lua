local cmp = require "cmp"

local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
  "folke/todo-comments.nvim",
    lazy = false,
    requires = { "nvim-lua/plenary.nvim" },
    init = function()
      require("core.utils").lazy_load "todo-comments.nvim"
    end,
    opts = function()
      return require "plugins.configs.todocomments"
    end,
    config = function(_, opts)
      require("todo-comments").setup(opts)
    end,
},
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    requires  = { "nvim-tree/nvim-web-devicons" },
    init = function()
      require("core.utils").lazy_load "trouble.nvim"
    end,
    opts = function()
      return require "plugins.configs.trouble"
    end,
    config = function(_, opts)
      require("trouble").setup(opts)
    end,
  },
  {
    "ionide/Ionide-vim",
    ft = "fsharp",
    dependencies = {
      "neovim/nvim-lspconfig",
    }

  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    'saecki/crates.nvim',
    ft = {"toml"},
    config = function(_, opts)
      local crates  = require('crates')
      crates.setup(opts)
      require('cmp').setup.buffer({
        sources = { { name = "crates" }}
      })
      crates.show()
      require("core.utils").load_mappings("crates")
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = false,
    config = function(_, opts)
      require("nvim-dap-virtual-text").setup()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      M.completion.completeopt = "menu,menuone,noselect"
      M.mapping["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      }
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  }
}
return plugins
