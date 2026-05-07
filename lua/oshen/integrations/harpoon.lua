-- oshen/integrations/harpoon.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  local bg_m = transparent and p.none or p.mantle

  hi("HarpoonWindow", { fg = p.text, bg = bg_m })
  hi("HarpoonBorder", { fg = p.navy, bg = bg_m })
end

return M
