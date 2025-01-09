local telescope_tools = vim.g.telescope

return {
  "ANGkeith/telescope-terraform-doc.nvim",
  module = true,
  init = function()
    telescope_tools.add_extension("terraform_doc", {})
  end,
  keys = {
    {
      "<leader>ptt",
      function()
        vim.cmd.Telescope("terraform_doc", "terraform_doc")
      end,
      desc = "Find terraform resource documents",
    },
    {
      "<leader>ptm",
      function()
        vim.cmd.Telescope("terraform_doc", "modules")
      end,
      desc = "Find terraform modules documents",
    },
  },
}
