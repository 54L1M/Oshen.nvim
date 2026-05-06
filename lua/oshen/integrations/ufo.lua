-- oshen/integrations/ufo.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("UfoFoldedFg",          { fg = p.subtext0 })
  hi("UfoFoldedBg",          { bg = p.surface0 })
  hi("UfoCursorFoldedLine",  { bg = p.surface0, bold = true })
  hi("UfoFoldedEllipsis",    { fg = p.amber })
  hi("UfoPreviewNormal",     { bg = p.mantle })
  hi("UfoPreviewCursorLine", { bg = p.navy })
  hi("UfoPreviewSbar",       { bg = p.steel })
  hi("UfoPreviewThumb",      { bg = p.teal })
end

return M
