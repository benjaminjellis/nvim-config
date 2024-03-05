local M = {}

M.general = {
  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["<leader>cb"] = {
      "<cmd>%bd|e#<cr>",
      "Close all buffers"
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
    -- spelling mappings
    ["<leader>sn"] = {
      function()
        vim.fn["spelunker#jump_next"]()
      end,
      "Next spelling",
    },
    ["<leader>sp"] = {
      function()
        vim.fn["spelunker#jump_prev"]()
      end,
      "Previous spelling",
    },
    ["<leader>sg"] = {
      function()
        vim.fn["spelunker#check"]()
      end,
      "Add word to spell list",
    },
    ["<leader>sl"] = {
      function()
        vim.fn["spelunker#correct_from_list"]()
      end,
      "Show spelling suggestions",
    },

    -- git tools
    ["<leader>gdc"] = {
      "<cmd> DiffviewClose <cr>",
      "Git diff close"
    },
    ["<leader>gdo"] = {
      "<cmd> DiffviewOpen <CR>",
      "Git diff open"
    },
    ["<leader>lg"] = {
      "<cmd> LazyGit <CR>",
      "Open lazy git"
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k<"] = { "<cmd> TmuxNavigateUp <CR>", "winsow up" },
    ["<leader>fo"] = { "<cmd> RustLsp hover actions <CR>", "show rust hover action" },
    ["<leader>dbs"] = { "<cmd> RustLsp debuggables <CR>", "start debugger" },
    ["<leader>fee"] = { "<cmd> RustLsp explainError <CR>", "explain error" },
    ["<leader>ft"] = { "<cmd> Trouble <CR>", "Find trouble" },
    ["<leader>ct"] = { "<cmd> TroubleClose <CR>", "Close trouble" },

    ["<leader>ta"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "test all in this file",
    },

    ["<leader>tn"] = {
      function()
        require("neotest").run.run()
      end,
      "test nearest",
    },

    ["<leader>to"] = {
      function()
        require("neotest").output_panel.open()
      end,
      "show test output",
    },

    ["]t"] = {
      function()
        require("todo-comments").jump_prev()
      end,
      "Next todo comment",
    },

    ["[t"] = {
      function()
        require("todo-comments").jump_prev()
      end,
      "Previous todo comment",
    },
  },
  t = {
    ["<leader>tc"] = {
      vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dos"] = {
      function()
        require("dapui").setup()
        require("dapui").open()
      end,
      "Open debugging sidebar",
    },
    ["<leader>dcs"] = {
      function()
        require("dapui").close()
      end,
      "Close debugging sidebar",
    },
  },
}

return M
