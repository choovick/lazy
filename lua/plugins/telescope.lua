local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      -- !!! brew install ripgrep on macOS
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  -- change some options
  opts = {
    config = function()
      require("telescope").load_extension("live_grep_args")
    end,
    pickers = {
      live_grep = {
        additional_args = function()
          return { "-L" }
        end,
      },
      grep_string = {
        additional_args = function()
          return { "-L" }
        end,
      },
      find_files = {
        -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--glob",
          "!**/.git/*",
          "-L",
        },
      },
    },
  },
  keys = {
    -- {
    --   "<leader><space>",
    --   Util.telescope("files", { cwd = false }),
    --   desc = "Find Files (cwd)",
    -- },
    -- { "<leader>sG", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    -- { "<leader>sg", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    {
      "<leader>sG",
      ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
      desc = "GrepArgs (root dir)",
    },

    -- { "<leader>sG", Util.telescope("live_grep_args"), desc = "Grep (root dir)" },
    -- {
    --   "<leader>sg",
    --   Util.telescope("live_grep", { cwd = false }),
    --   desc = "Grep (cwd)",
    -- },
  },
}
