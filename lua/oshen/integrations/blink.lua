-- oshen/integrations/blink.lua
-- blink.cmp completion menu.

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  -- ── Menu ─────────────────────────────────────────────────────────────
  hi("BlinkCmpMenu", { fg = p.text, bg = p.mantle })
  hi("BlinkCmpMenuBorder", { fg = p.navy, bg = p.mantle })
  hi("BlinkCmpMenuSelection", { fg = p.base, bg = p.teal, bold = true })
  hi("BlinkCmpScrollBarThumb", { bg = p.steel })
  hi("BlinkCmpScrollBarGutter", { bg = p.mantle })

  -- ── Label ────────────────────────────────────────────────────────────
  hi("BlinkCmpLabel", { fg = p.text })
  hi("BlinkCmpLabelDeprecated", { fg = p.overlay1, strikethrough = true })
  hi("BlinkCmpLabelMatch", { fg = p.amber, bold = true })
  hi("BlinkCmpLabelDescription", { fg = p.subtext0 })
  hi("BlinkCmpLabelDetail", { fg = p.overlay2 })

  -- ── Kind icons ───────────────────────────────────────────────────────
  hi("BlinkCmpKind", { fg = p.teal })
  hi("BlinkCmpKindFunction", { fg = p.teal })
  hi("BlinkCmpKindMethod", { fg = p.teal })
  hi("BlinkCmpKindConstructor", { fg = p.lavender })
  hi("BlinkCmpKindClass", { fg = p.lavender })
  hi("BlinkCmpKindInterface", { fg = p.lavender })
  hi("BlinkCmpKindStruct", { fg = p.lavender })
  hi("BlinkCmpKindEnum", { fg = p.lavender })
  hi("BlinkCmpKindEnumMember", { fg = p.text })
  hi("BlinkCmpKindField", { fg = p.text })
  hi("BlinkCmpKindProperty", { fg = p.text })
  hi("BlinkCmpKindVariable", { fg = p.text })
  hi("BlinkCmpKindKeyword", { fg = p.amber })
  hi("BlinkCmpKindText", { fg = p.green })
  hi("BlinkCmpKindSnippet", { fg = p.peach })
  hi("BlinkCmpKindModule", { fg = p.teal })
  hi("BlinkCmpKindFile", { fg = p.steel })
  hi("BlinkCmpKindFolder", { fg = p.steel })
  hi("BlinkCmpKindColor", { fg = p.peach })
  hi("BlinkCmpKindReference", { fg = p.sky })
  hi("BlinkCmpKindUnit", { fg = p.amber })
  hi("BlinkCmpKindValue", { fg = p.amber })
  hi("BlinkCmpKindEvent", { fg = p.peach })
  hi("BlinkCmpKindOperator", { fg = p.overlay2 })
  hi("BlinkCmpKindTypeParameter", { fg = p.lavender })

  -- ── Docs ─────────────────────────────────────────────────────────────
  hi("BlinkCmpDoc", { fg = p.text, bg = p.mantle })
  hi("BlinkCmpDocBorder", { fg = p.navy, bg = p.mantle })
  hi("BlinkCmpDocSeparator", { fg = p.navy })
  hi("BlinkCmpSignatureHelp", { fg = p.text, bg = p.mantle })
  hi("BlinkCmpSignatureHelpBorder", { fg = p.navy, bg = p.mantle })
  hi("BlinkCmpSignatureHelpActiveParameter", { fg = p.amber, bold = true })
end

return M
