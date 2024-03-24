-- Keymaps are automatically loaded on the VeryLazy event
-- Default eymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ";", ":", { remap = true })
vim.keymap.set("n", "<leader>cb", "<cmd>%bd|e#<cr>")
-- spelling
vim.keymap.set("n", "<leader>spn", function()
  vim.fn["spelunker#jump_next"]()
end, { remap = true })
vim.keymap.set("n", "<leader>spp", function()
  vim.fn["spelunker#jump_prev"]()
end, { remap = true })
vim.keymap.set("n", "<leader>spl", function()
  vim.fn["spelunker#correct_from_list"]()
end, { remap = true })
vim.keymap.set("n", "<tab>", "<cmd> bnext <CR>")
