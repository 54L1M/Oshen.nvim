-- oshen/integrations/whichkey.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  local bg_m = transparent and p.none or p.mantle

  hi("WhichKey", { fg = p.amber })
  hi("WhichKeyGroup", { fg = p.teal })
  hi("WhichKeyDesc", { fg = p.text })
  hi("WhichKeySeparator", { fg = p.overlay1 })
  hi("WhichKeyValue", { fg = p.subtext0 })
  hi("WhichKeyBorder", { fg = p.navy })
  hi("WhichKeyNormal", { fg = p.text, bg = bg_m })
  hi("WhichKeyTitle", { fg = p.amber, bold = true })
end

return M
