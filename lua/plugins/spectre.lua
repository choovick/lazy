local Util = require("lazyvim.util")

return {
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  opts = {
    open_cmd = "noswapfile vnew",
    find_engine = {
      -- rg is map with finder_cmd
      ["rg"] = {
        cmd = "rg",
        -- default args
        args = { "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "-L" },
        options = {
          ["ignore-case"] = {
            value = "--ignore-case",
            icon = "[I]",
            desc = "ignore case",
          },
          ["hidden"] = {
            value = "--hidden",
            desc = "hidden file",
            icon = "[H]",
          },
          -- you can put any rg search option you want here it can toggle with
          -- show_option function
        },
      },
    },
  },
  keys = {
    {
      "<leader>sr",
      function()
        require("spectre").open()
      end,
      desc = "Replace in files (Spectre)",
    },
  },
}
