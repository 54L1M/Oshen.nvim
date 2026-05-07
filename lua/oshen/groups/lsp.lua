-- oshen/groups/lsp.lua
-- LSP diagnostic highlight groups.

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  -- ── Virtual text ─────────────────────────────────────────────────────
  local vt_bg = {
    error = transparent and p.none or "#1e0b0e",
    warn = transparent and p.none or "#1e1208",
    info = transparent and p.none or "#0a1416",
    hint = transparent and p.none or "#12101c",
  }

  hi("DiagnosticError", { fg = p.red })
  hi("DiagnosticWarn", { fg = p.peach })
  hi("DiagnosticInfo", { fg = p.teal })
  hi("DiagnosticHint", { fg = p.lavender })
  hi("DiagnosticOk", { fg = p.green })

  hi("DiagnosticUnderlineError", { undercurl = true, sp = p.red })
  hi("DiagnosticUnderlineWarn", { undercurl = true, sp = p.peach })
  hi("DiagnosticUnderlineInfo", { underdotted = true, sp = p.teal })
  hi("DiagnosticUnderlineHint", { underdotted = true, sp = p.lavender })

  hi("DiagnosticVirtualTextError", { fg = p.red, bg = vt_bg.error, italic = true })
  hi("DiagnosticVirtualTextWarn", { fg = p.peach, bg = vt_bg.warn, italic = true })
  hi("DiagnosticVirtualTextInfo", { fg = p.teal, bg = vt_bg.info, italic = true })
  hi("DiagnosticVirtualTextHint", { fg = p.lavender, bg = vt_bg.hint, italic = true })

  hi("DiagnosticSignError", { fg = p.red })
  hi("DiagnosticSignWarn", { fg = p.peach })
  hi("DiagnosticSignInfo", { fg = p.teal })
  hi("DiagnosticSignHint", { fg = p.lavender })

  hi("DiagnosticFloatingError", { fg = p.red })
  hi("DiagnosticFloatingWarn", { fg = p.peach })
  hi("DiagnosticFloatingInfo", { fg = p.teal })
  hi("DiagnosticFloatingHint", { fg = p.lavender })

  -- ── LSP references ───────────────────────────────────────────────────
  hi("LspReferenceText", { bg = p.surface0 })
  hi("LspReferenceRead", { bg = p.surface0 })
  hi("LspReferenceWrite", { bg = p.surface0, underline = true, sp = p.amber })
  hi("LspSignatureActiveParameter", { fg = p.amber, bold = true })
  hi("LspCodeLens", { fg = p.overlay1, italic = true })
  hi("LspCodeLensSeparator", { fg = p.overlay0 })
  hi("LspInlayHint", { fg = p.overlay1, bg = p.surface0, italic = true })
end

return M
