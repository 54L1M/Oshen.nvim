-- oshen/integrations/tiny_inline_diagnostic.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  local vt_bg = {
    error = transparent and p.none or "#1e0b0e",
    warn  = transparent and p.none or "#1e1208",
    info  = transparent and p.none or "#0a1416",
    hint  = transparent and p.none or "#12101c",
  }

  hi("TinyInlineDiagnosticVirtualTextError", { fg = p.red,      bg = vt_bg.error, italic = true })
  hi("TinyInlineDiagnosticVirtualTextWarn",  { fg = p.peach,    bg = vt_bg.warn,  italic = true })
  hi("TinyInlineDiagnosticVirtualTextInfo",  { fg = p.teal,     bg = vt_bg.info,  italic = true })
  hi("TinyInlineDiagnosticVirtualTextHint",  { fg = p.lavender, bg = vt_bg.hint,  italic = true })
  hi("TinyInlineDiagnosticVirtualTextOk",    { fg = p.green,    italic = true })
  hi("TinyInlineDiagnosticVirtualTextArrow", { fg = p.overlay1 })
end

return M
