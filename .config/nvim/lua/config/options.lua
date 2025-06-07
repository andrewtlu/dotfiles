-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.shiftwidth = 4
vim.cmd("autocmd FileType css setlocal shiftwidth=2")
vim.cmd("autocmd FileType lua setlocal shiftwidth=2")
