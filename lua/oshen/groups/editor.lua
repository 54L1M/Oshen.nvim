-- oshen/groups/editor.lua
-- Core editor UI: buffers, cursor, search, splits, tabs, popups.

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  local bg   = transparent and p.none or p.base
  local bg_m = transparent and p.none or p.mantle
  local bg_s = transparent and p.none or p.surface0

  -- ── Buffer / Window ───────────────────────────────────────────────────
  hi("Normal",       { fg = p.text,     bg = bg })
  hi("NormalFloat",  { fg = p.text,     bg = bg_m })
  hi("NormalNC",     { fg = p.text,     bg = bg })
  hi("ColorColumn",  { bg = p.surface0 })
  hi("EndOfBuffer",  { fg = p.base })

  -- ── Cursor ────────────────────────────────────────────────────────────
  hi("Cursor",       { fg = p.base, bg = p.amber })
  hi("CursorIM",     { fg = p.base, bg = p.amber })
  hi("CursorLine",   { bg = bg_s })
  hi("CursorColumn", { bg = bg_s })
  hi("CursorLineNr", { fg = p.amber, bold = true })
  hi("TermCursor",   { fg = p.base, bg = p.amber })

  -- ── Gutter ────────────────────────────────────────────────────────────
  hi("LineNr",       { fg = p.overlay0 })
  hi("LineNrAbove",  { fg = p.overlay0 })
  hi("LineNrBelow",  { fg = p.overlay0 })
  hi("SignColumn",   { fg = p.overlay1, bg = bg })
  hi("FoldColumn",   { fg = p.overlay1, bg = bg })
  hi("Folded",       { fg = p.subtext0, bg = p.surface0, italic = true })

  -- ── Non-content chars ─────────────────────────────────────────────────
  hi("NonText",      { fg = p.overlay0 })
  hi("SpecialKey",   { fg = p.overlay0 })
  hi("Whitespace",   { fg = p.overlay0 })
  hi("Conceal",      { fg = p.overlay2 })

  -- ── Directory / file listings ─────────────────────────────────────────
  hi("Directory",    { fg = p.teal })

  -- ── Visual selection ─────────────────────────────────────────────────
  hi("Visual",       { bg = p.navy })
  hi("VisualNOS",    { bg = p.navy })

  -- ── Search ───────────────────────────────────────────────────────────
  hi("Search",       { fg = p.amber, bg = p.navy })
  hi("IncSearch",    { fg = p.base,  bg = p.amber, bold = true })
  hi("CurSearch",    { fg = p.base,  bg = p.amber, bold = true })
  hi("Substitute",   { fg = p.base,  bg = p.red })

  -- ── Matching ─────────────────────────────────────────────────────────
  hi("MatchParen",   { fg = p.amber, bold = true, underline = true })

  -- ── Popup menu ───────────────────────────────────────────────────────
  hi("Pmenu",        { fg = p.text,    bg = p.mantle })
  hi("PmenuSel",     { fg = p.base,    bg = p.teal, bold = true })
  hi("PmenuSbar",    { bg = p.surface0 })
  hi("PmenuThumb",   { bg = p.steel })
  hi("WildMenu",     { fg = p.base,    bg = p.teal })

  -- ── Floats ───────────────────────────────────────────────────────────
  hi("FloatBorder",  { fg = p.navy,  bg = bg_m })
  hi("FloatTitle",   { fg = p.steel, bold = true })
  hi("FloatFooter",  { fg = p.overlay1 })

  -- ── Statusline ───────────────────────────────────────────────────────
  hi("StatusLine",   { fg = p.subtext0, bg = bg_m })
  hi("StatusLineNC", { fg = p.overlay1, bg = bg_m })

  -- ── Winbar ───────────────────────────────────────────────────────────
  hi("WinBar",       { fg = p.subtext0, bg = bg })
  hi("WinBarNC",     { fg = p.overlay1, bg = bg })

  -- ── Splits ───────────────────────────────────────────────────────────
  hi("WinSeparator", { fg = p.navy })
  hi("VertSplit",    { fg = p.navy })

  -- ── Tabs ─────────────────────────────────────────────────────────────
  hi("TabLine",      { fg = p.overlay1, bg = p.mantle })
  hi("TabLineFill",  { bg = p.mantle })
  hi("TabLineSel",   { fg = p.text,     bg = p.navy, bold = true })

  -- ── Messages ─────────────────────────────────────────────────────────
  hi("Title",        { fg = p.amber,    bold = true })
  hi("Question",     { fg = p.teal })
  hi("MoreMsg",      { fg = p.teal })
  hi("ModeMsg",      { fg = p.text,     bold = true })
  hi("WarningMsg",   { fg = p.peach })
  hi("ErrorMsg",     { fg = p.red })
  hi("QuickFixLine", { bg = p.surface0 })

  -- ── Diff ─────────────────────────────────────────────────────────────
  hi("DiffAdd",      { bg = "#0d2018" })
  hi("DiffChange",   { bg = "#0d1a2e" })
  hi("DiffDelete",   { bg = "#2a0d12" })
  hi("DiffText",     { bg = "#0d2040" })

  -- ── Spell ────────────────────────────────────────────────────────────
  hi("SpellBad",     { undercurl = true, sp = p.red })
  hi("SpellCap",     { undercurl = true, sp = p.peach })
  hi("SpellLocal",   { undercurl = true, sp = p.teal })
  hi("SpellRare",    { undercurl = true, sp = p.lavender })
end

return M
