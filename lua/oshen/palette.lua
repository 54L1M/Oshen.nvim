-- oshen/palette.lua
-- The five source colors and all derived values.
-- External plugins can read this: require("oshen").get_palette()

local M = {}

M.colors = {
  -- ── Original five ───────────────────────────────────────────────────────
  amber    = "#ffb703",  -- keywords, numbers, cursors
  cream    = "#f1faee",  -- foreground alias
  teal     = "#abdadc",  -- functions, info
  steel    = "#457b9d",  -- borders, accents
  navy     = "#1d3567",  -- selection, deep UI chrome

  -- ── Backgrounds ─────────────────────────────────────────────────────────
  crust    = "#060810",  -- deepest bg (statusline fills, extreme panels)
  mantle   = "#090c12",  -- panels, popups, sidebars
  base     = "#0e1117",  -- main editor background

  -- ── Surfaces ────────────────────────────────────────────────────────────
  surface0 = "#131c2b",  -- cursorline, word highlights
  surface1 = "#1e2d42",  -- raised surfaces, TreesitterContext
  surface2 = "#2a3f58",  -- hover states, picker selections

  -- ── Overlays ────────────────────────────────────────────────────────────
  overlay0 = "#3d5570",  -- barely-visible guides, whitespace chars
  overlay1 = "#526d82",  -- comments, inactive line numbers
  overlay2 = "#6a8599",  -- operators, punctuation, conceal

  -- ── Text tiers ──────────────────────────────────────────────────────────
  subtext0 = "#8899aa",  -- secondary/dim info, statusline text
  subtext1 = "#b0c4d8",  -- slightly brighter secondary
  text     = "#f1faee",  -- main foreground

  -- ── Accent colors ───────────────────────────────────────────────────────
  peach    = "#e8944a",  -- warnings, orange-adjacent tokens
  green    = "#a8c97f",  -- strings, git added
  sky      = "#7ab8d4",  -- string escapes, special punctuation, diff info
  lavender = "#c3a0d8",  -- types, hints, constructors
  red      = "#e05c6e",  -- errors, git deleted, exceptions

  -- ── Utility ─────────────────────────────────────────────────────────────
  none     = "NONE",
}

return M
