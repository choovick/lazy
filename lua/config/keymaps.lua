-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>sv", function()
  local builtin = require("telescope.builtin")
  local utils = require("telescope.utils")
  builtin.live_grep({
    search_dirs = {
      utils.buffer_dir(),
    },
    -- pickers = {
    --   find_files = {
    --     -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
    --     find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" },
    --   },
    --   live_grep = {
    --     additional_args = function()
    --       return { "-L" }
    --     end,
    --   },
    -- },
  })
end, { desc = "Grep (buffer_dir)" })

vim.keymap.set("v", "<leader>sv", function()
  local builtin = require("telescope.builtin")
  local utils = require("telescope.utils")
  builtin.grep_string({
    -- search_dirs = {
    --   utils.buffer_dir(),
    -- },
    cwd = utils.buffer_dir(),
    -- pickers = {
    -- find_files = {
    --   -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
    --   find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" },
    -- },

    -- search_string = {
    --   find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" },
    --   additional_args = function()
    --     return { "-L" }
    --   end,
    -- },
    -- },
  })
end, { desc = "Grep (buffer_dir)" })

-- need to remap these 2 swapping them around
-- vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fF', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })

-- vim.keymap.set("n", "<leader>ff", function()
--   require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
-- end, { desc = "Find Files (cwd)" })
-- vim.keymap.set("n", "<leader>fF", function()
--   require("telescope.builtin").git_files()
-- end, { desc = "Find Files Git Root" })

