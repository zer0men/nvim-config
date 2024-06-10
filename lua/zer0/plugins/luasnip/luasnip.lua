return {
  {
    lazy = true,
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    build = "make install_jsregexp",
    config = function()
      local luasnip_lua_loader_lua = require("luasnip.loaders.from_lua")
      local luasnip_lua_loader = require("luasnip.loaders")
      require("luasnip.loaders.from_vscode").load({})

      luasnip_lua_loader_lua.lazy_load({ paths = "~/.config/nvim/lua/zer0/plugins/luasnip/snippets" })
      vim.keymap.set("n", "<leader>se", luasnip_lua_loader.edit_snippet_files, { desc = "Edit snippets" })
    end,
    init = function()
      local function expend(args)
        require("luasnip").lsp_expand(args.body)
      end
      vim.g.cmp.set_expend_func(expend)
    end,
  },
  {
    "saadparwaiz1/cmp_luasnip",
    init = function()
      -- vim.g.cmp.add_source("luasnip")
    end,
  },
}
