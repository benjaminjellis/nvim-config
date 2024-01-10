local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k<"] = { "<cmd> TmuxNavigateUp <CR>", "winsow up" },
    ["<leader>fo"] = { "<cmd> RustLsp hover actions <CR>", "show rust hover action" },
    ["<leader>ee"] = { "<cmd> RustLsp explainError <CR>", "explain error" },
    ["<leader>ft"] = { "<cmd> Trouble <CR>", "Find trouble" },
    ["<leader>ta"] = {
      function()
        require("neotest").run.run(vim.fn.expand("%"));
      end,
      "test all in this file"
    },
    ["<leader>tn"] = {
      function()
        require("neotest").run.run();
      end,
      "test nearest"
    },


    ["<leader>to"] = {
      function()
        require("neotest").output_panel.open();
      end,
      "show test output"
    }
  },
  t = {
    ["<leader>tc"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },
}



M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}


M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
