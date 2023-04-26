
--  MP options

local set = vim.opt -- set options

-- relativenumber
vim.opt.relativenumber = true

-- Neotree and floating Neotree
vim.keymap.set({ 'n', 'v' }, '<M-1>',  require('neo-tree').focus)
vim.keymap.set({ 'n', 'v' }, '<M-2>',  require('neo-tree').close_all)
vim.keymap.set({ 'n', 'v' }, '<M-3>',  require('neo-tree').float)

-- git commands with leader key
vim.keymap.set('n', '<leader>git', "<cmd>:Git<cr>")
vim.keymap.set('n', '<leader>com', "<cmd>:Git commit<cr>")
vim.keymap.set('n', '<leader>push', "<cmd>:Git push<cr>")

-- tabs
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

-- toggle hlsearch
vim.keymap.set({ 'n', 'v' }, '<F25>', "<cmd>:set hlsearch<cr>") -- ctrl + <F1>
vim.keymap.set({ 'n', 'v' }, '<F26>', "<cmd>:set nohlsearch<cr>") -- ctrl + <F2>

-- toggle diagnostics
disable_diagnostics = function()
  vim.diagnostic.disable()
end

enable_diagnostics = function()
  vim.diagnostic.enable()
end

vim.keymap.set({ 'n', 'v' }, '<F27>', enable_diagnostics) -- ctrl + <F3>
vim.keymap.set({ 'n', 'v' }, '<F28>', disable_diagnostics) -- ctrl + <F4>
