-- oshen/integrations/lualine.lua
-- Use as your lualine theme:
--
--   require("lualine").setup({
--     options = { theme = require("oshen.integrations.lualine").get() }
--   })

local M = {}

function M.get()
  local p = require("oshen").get_palette()

  -- b/c sections are fully transparent — only the mode pill (a) has color.
  -- This lets the terminal wallpaper show through everywhere except the mode.
  return {
    normal = {
      a = { bg = p.teal, fg = p.base, gui = "bold" },
      b = { bg = p.none, fg = p.subtext0 },
      c = { bg = p.none, fg = p.subtext0 },
    },
    insert = {
      a = { bg = p.green, fg = p.base, gui = "bold" },
      b = { bg = p.none, fg = p.subtext0 },
      c = { bg = p.none, fg = p.subtext0 },
    },
    visual = {
      a = { bg = p.lavender, fg = p.base, gui = "bold" },
      b = { bg = p.none, fg = p.subtext0 },
      c = { bg = p.none, fg = p.subtext0 },
    },
    command = {
      a = { bg = p.amber, fg = p.base, gui = "bold" },
      b = { bg = p.none, fg = p.subtext0 },
      c = { bg = p.none, fg = p.subtext0 },
    },
    replace = {
      a = { bg = p.red, fg = p.base, gui = "bold" },
      b = { bg = p.none, fg = p.subtext0 },
      c = { bg = p.none, fg = p.subtext0 },
    },
    inactive = {
      a = { bg = p.none, fg = p.overlay1, gui = "bold" },
      b = { bg = p.none, fg = p.overlay1 },
      c = { bg = p.none, fg = p.overlay1 },
    },
  }
end

return M
