return {
  "sontungexpt/url-open",
  event = "VeryLazy",
  keys = {
    { "gx", vim.cmd.URLOpenUnderCursor, desc = "Open Url" },
  },
  cmd = "URLOpenUnderCursor",
  config = function()
    local status_ok, url_open = pcall(require, "url-open")
    if not status_ok then
      return
    end
    url_open.setup({
      highlight_url = {
        all_urls = {
          underline = false,
        },
        cursor_move = {
          underline = false,
        },
      },
    })
  end,
}
