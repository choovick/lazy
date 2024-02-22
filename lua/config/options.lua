-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- Change directory to argunent directory
-- vim.opt.autochdir = true

-- Prism config
vim.g.prism_dir_changed_pattern = {}
vim.g.prism_colorschemes = { "catppuccin-mocha" }
