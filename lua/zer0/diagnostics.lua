vim.diagnostic.config({
  underline = false,
  signs = { source = true },
  virtual_text = false,
  float = {
    show_header = false,
    format = function(diagnostic)
      return string.format('%s\n%s', diagnostic.source, diagnostic.message)
    end,
  },
  update_in_insert = true,
  severity_sort = true,
})
