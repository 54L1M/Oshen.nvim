-- oshen/integrations/snacks.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  local bg_m = transparent and p.none or p.mantle

  -- ── General ──────────────────────────────────────────────────────────
  hi("SnacksNormal", { fg = p.text, bg = bg_m })

  -- ── Picker ───────────────────────────────────────────────────────────
  hi("SnacksPickerBorder", { fg = p.navy })
  hi("SnacksPickerTitle", { fg = p.amber, bold = true })
  hi("SnacksPickerDir", { fg = p.steel })
  hi("SnacksPickerMatch", { fg = p.amber, bold = true })
  hi("SnacksPickerSelected", { fg = p.teal, bold = true })
  hi("SnacksPickerPrompt", { fg = p.amber })

  -- ── Dashboard ────────────────────────────────────────────────────────
  hi("SnacksDashboardHeader", { fg = p.amber })
  hi("SnacksDashboardIcon", { fg = p.teal })
  hi("SnacksDashboardTitle", { fg = p.lavender })
  hi("SnacksDashboardDesc", { fg = p.subtext0 })
  hi("SnacksDashboardKey", { fg = p.amber, bold = true })
  hi("SnacksDashboardFooter", { fg = p.overlay1, italic = true })

  -- ── Notifier ─────────────────────────────────────────────────────────
  hi("SnacksNotifierInfo", { fg = p.teal })
  hi("SnacksNotifierWarn", { fg = p.peach })
  hi("SnacksNotifierError", { fg = p.red })
  hi("SnacksNotifierTitle", { fg = p.amber, bold = true })
  hi("SnacksNotifierBorder", { fg = p.navy })

  -- ── Indent guides ────────────────────────────────────────────────────
  hi("SnacksIndent", { fg = p.overlay0 }) -- inactive guides
  hi("SnacksIndentScope", { fg = p.overlay2 }) -- active scope guide
end

return M
