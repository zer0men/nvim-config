return {
  "nvim-lualine/lualine.nvim",
  enabled = false,
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local navic = require("nvim-navic")
    require("lualine").setup({

      options = {
        theme = vim.g.colorscheme,
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 2 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {
        lualine_a = { {
          function()
            return ">>"
          end,
        } },
        lualine_b = {
          {
            function()
              local bufrn = vim.api.nvim_get_current_buf()
              return navic.get_location({}, bufrn)
            end,
          },
        },
        lualine_x = { {
          function()
            return vim.loop.cwd()
          end,
        } },
      },
      inactive_winbar = {},
      extensions = {},
    })
  end,
}
