return {
  "epwalsh/obsidian.nvim",
  init = function() end,
  version = "*", -- recommended, use latest release instead of latest commit
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "second-brain",
        path = "~/.local/obsidian/SecondBrain/",
      },
    },
    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
      alias_formal = "%Y-%m-%d",
      template = "Daily.md",
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {
        today = function()
          return os.date("%Y-%m-%d", os.time())
        end,
        yesterday = function()
          return os.date("%Y-%m-%d", os.time() - 86400)
        end,
      },
    },

    -- {
    --   name = "work",
    --   path = "~/.local/vaults/work",
    -- },
    -- see below for full list of options 👇
  },
  keys = {
    { "<leader>oD", vim.cmd.ObsidianDailies, desc = "Dailes" },
    { "<leader>oF", vim.cmd.ObsidianFollowLink, desc = "Follow Link" },
    { "<leader>oN", vim.cmd.ObsidianNewFromTemplate, desc = "New From Template" },
    { "<leader>ob", vim.cmd.ObsidianBacklinks, desc = "Dailes" },
    { "<leader>oc", vim.cmd.ObsidianToggleCheckbox, desc = "Toggle Checkbox" },
    { "<leader>od", vim.cmd.ObsidianToday, desc = "Today" },
    { "<leader>oft", vim.cmd.ObsidianTags, desc = "Tags" },
    { "<leader>oi", vim.cmd.ObsidianPasteImg, desc = "Paste Image" },
    { "<leader>ol", vim.cmd.ObsidianLinks, desc = "Links" },
    { "<leader>on", vim.cmd.ObsidianNew, desc = "New" },
    { "<leader>or", vim.cmd.ObsidianRename, desc = "Rename" },
    { "<leader>os", vim.cmd.ObsidianSearch, desc = "Search" },
    { "<leader>ot", vim.cmd.ObsidianTemplate, desc = "Template" },
    { "<leader>ow", vim.cmd.ObsidianWorkspace, desc = "Worksace" },
    { "<leader>oy", vim.cmd.ObsidianYesterday, desc = "Yesterday" },
  },
  cmd = {
    "ObsidianToday",
  },
}
