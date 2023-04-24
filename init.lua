--  MP options

local set = vim.opt -- set options

-- relativenumber
vim.opt.relativenumber = true

-- NeoTree
vim.keymap.set({ 'n', 'v' }, '<F6>', ':Neotree <CR>')

-- git commands with leader key
vim.keymap.set('n', '<leader>git', "<cmd>:Git<cr>")
vim.keymap.set('n', '<leader>com', "<cmd>:Git commit<cr>")
vim.keymap.set('n', '<leader>push', "<cmd>:Git push<cr>")

-- tabs
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

-- toggle diagnostics
disable_diagnostics = function()
  vim.diagnostic.disable()
end

enable_diagnostics = function()
  vim.diagnostic.enable()
end

vim.keymap.set({ 'n', 'v' }, '<F2>', disable_diagnostics)
vim.keymap.set({ 'n', 'v' }, '<F3>', enable_diagnostics)
