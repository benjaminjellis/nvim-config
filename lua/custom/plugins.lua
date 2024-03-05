local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "marksman",
        "json-lsp",
        "codelldb",
      },
    },
  },
  { 'gen740/SmoothCursor.nvim',
    lazy = false,
    config = function()
      require('smoothcursor').setup()
    end
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    }
  },
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewClose",
      "DiffviewOpen",
    }
  },
  {
  'mrcjkb/haskell-tools.nvim',
  version = '^3', -- Recommended
  ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
  },
  {
    "kamykn/spelunker.vim",
    lazy = false,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "mrcjkb/rustaceanvim",
      "nvim-neotest/neotest-plenary",
      "folke/neodev.nvim",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-plenary",
          require('rustaceanvim.neotest'),
        },
      }
      require("neodev").setup {
        library = { plugins = { "neotest" }, types = true },
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
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
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = {
      "Trouble"
    },
    opts = {},
  },
  {
    "mrcjkb/rustaceanvim",
    version = "4.11.1",
    ft = { "rust" },
    init = function()
      vim.g.rustaceanvim = {
        on_attach = function(_, _) end,
      }
    end,
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings "dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = false,
    config = function(_, _)
      require("nvim-dap-virtual-text").setup()
    end,
  }
}
return plugins
