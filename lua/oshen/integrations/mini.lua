-- oshen/integrations/mini.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  local bg_m = transparent and p.none or p.mantle

  -- ── mini.statusline ───────────────────────────────────────────────────
  hi("MiniStatuslineModeNormal", { fg = p.base, bg = p.teal, bold = true })
  hi("MiniStatuslineModeInsert", { fg = p.base, bg = p.green, bold = true })
  hi("MiniStatuslineModeVisual", { fg = p.base, bg = p.lavender, bold = true })
  hi("MiniStatuslineModeReplace", { fg = p.base, bg = p.red, bold = true })
  hi("MiniStatuslineModeCommand", { fg = p.base, bg = p.amber, bold = true })
  hi("MiniStatuslineModeOther", { fg = p.base, bg = p.steel, bold = true })
  hi("MiniStatuslineFilename", { fg = p.subtext0, bg = bg_m })
  hi("MiniStatuslineFileinfo", { fg = p.subtext0, bg = bg_m })
  hi("MiniStatuslineInactive", { fg = p.overlay1, bg = bg_m })

  -- ── mini.indentscope ─────────────────────────────────────────────────
  hi("MiniIndentscopeSymbol", { fg = p.overlay2 })

  -- ── mini.cursorword ───────────────────────────────────────────────────
  hi("MiniCursorword", { bg = p.surface0 })

  -- ── mini.diff ────────────────────────────────────────────────────────
  hi("MiniDiffSignAdd", { fg = p.green })
  hi("MiniDiffSignChange", { fg = p.amber })
  hi("MiniDiffSignDelete", { fg = p.red })
  hi("MiniDiffOverAdd", { bg = "#0d2018" })
  hi("MiniDiffOverChange", { bg = "#0d1a2e" })
  hi("MiniDiffOverDelete", { bg = "#2a0d12" })

  -- ── mini.hipatterns ───────────────────────────────────────────────────
  hi("MiniHipatternsFixme", { fg = p.base, bg = p.red, bold = true })
  hi("MiniHipatternsHack", { fg = p.base, bg = p.peach, bold = true })
  hi("MiniHipatternsNote", { fg = p.base, bg = p.teal, bold = true })
  hi("MiniHipatternsTodo", { fg = p.base, bg = p.amber, bold = true })
end

return M
