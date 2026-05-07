-- tests/highlights_spec.lua
-- Loads the colorscheme in both modes and checks that highlight groups have
-- the right shape.  Colors come back from nvim_get_hl as integers (or nil),
-- so we check presence/absence rather than specific values.

local oshen = require("oshen")

-- Helper: resolve a group fully (follow links) and return its attrs.
local function hl(name)
  return vim.api.nvim_get_hl(0, { name = name, link = false })
end

-- ── Helpers ──────────────────────────────────────────────────────────────────

local function load_opaque()
  oshen.setup({ transparent = false })
  oshen.load()
end

local function load_transparent()
  oshen.setup({ transparent = true })
  oshen.load()
end

-- ── API contract ─────────────────────────────────────────────────────────────

describe("oshen public API", function()
  it("setup() accepts an empty table", function()
    assert.has_no.errors(function()
      oshen.setup({})
    end)
  end)

  it("setup() defaults transparent to false", function()
    oshen.setup({})
    assert.is_false(oshen.options.transparent)
  end)

  it("setup() stores transparent = true", function()
    oshen.setup({ transparent = true })
    assert.is_true(oshen.options.transparent)
  end)

  it("get_palette() returns a table with at least 20 entries", function()
    local p = oshen.get_palette()
    assert.is_table(p)
    local count = 0
    for _ in pairs(p) do
      count = count + 1
    end
    assert.is_true(count >= 20, "expected at least 20 palette entries, got " .. count)
  end)

  it("load() sets vim.g.colors_name to Oshen", function()
    load_opaque()
    assert.equal("Oshen", vim.g.colors_name)
  end)
end)

-- ── Opaque mode ──────────────────────────────────────────────────────────────

describe("highlights (transparent = false)", function()
  before_each(load_opaque)

  it("Normal has a solid foreground and background", function()
    local g = hl("Normal")
    assert.is_not_nil(g.fg, "Normal: missing fg")
    assert.is_not_nil(g.bg, "Normal: missing bg")
  end)

  it("NormalFloat has a solid background", function()
    assert.is_not_nil(hl("NormalFloat").bg, "NormalFloat: missing bg")
  end)

  it("FloatBorder has a solid background", function()
    assert.is_not_nil(hl("FloatBorder").bg, "FloatBorder: missing bg")
  end)

  it("CursorLine has a solid background", function()
    assert.is_not_nil(hl("CursorLine").bg, "CursorLine: missing bg")
  end)

  it("StatusLine has a solid background", function()
    assert.is_not_nil(hl("StatusLine").bg, "StatusLine: missing bg")
  end)

  it("DiagnosticVirtualTextError has a solid background", function()
    assert.is_not_nil(hl("DiagnosticVirtualTextError").bg)
  end)

  it("DiagnosticError has a foreground", function()
    assert.is_not_nil(hl("DiagnosticError").fg)
  end)

  it("LspInlayHint has a solid background", function()
    assert.is_not_nil(hl("LspInlayHint").bg)
  end)
end)

-- ── Transparent mode ─────────────────────────────────────────────────────────

describe("highlights (transparent = true)", function()
  before_each(load_transparent)

  it("loads without error and sets colors_name", function()
    assert.equal("Oshen", vim.g.colors_name)
  end)

  it("Normal has no background", function()
    assert.is_nil(hl("Normal").bg, "Normal should have no bg in transparent mode")
  end)

  it("NormalNC has no background", function()
    assert.is_nil(hl("NormalNC").bg, "NormalNC should have no bg in transparent mode")
  end)

  it("SignColumn has no background", function()
    assert.is_nil(hl("SignColumn").bg, "SignColumn should have no bg in transparent mode")
  end)

  -- CursorLine is intentionally exempt from transparency: an invisible
  -- cursorline is useless, so it always keeps its solid surface color.
  it("CursorLine always has a solid background even in transparent mode", function()
    assert.is_not_nil(hl("CursorLine").bg, "CursorLine must always have a bg")
  end)

  it("CursorLineNr still has a foreground", function()
    assert.is_not_nil(hl("CursorLineNr").fg)
  end)

  it("DiagnosticVirtualTextError has no background (follows transparency)", function()
    assert.is_nil(hl("DiagnosticVirtualTextError").bg)
  end)
end)

-- ── Group completeness ────────────────────────────────────────────────────────
-- A quick smoke-test: none of these groups should be missing entirely.

describe("group completeness", function()
  before_each(load_opaque)

  local must_exist = {
    -- editor
    "Normal",
    "NormalFloat",
    "NormalNC",
    "CursorLine",
    "CursorLineNr",
    "LineNr",
    "SignColumn",
    "Visual",
    "Search",
    "IncSearch",
    "Pmenu",
    "PmenuSel",
    "FloatBorder",
    "StatusLine",
    "WinSeparator",
    -- syntax
    "Comment",
    "Keyword",
    "String",
    "Number",
    "Function",
    "Type",
    -- diagnostics
    "DiagnosticError",
    "DiagnosticWarn",
    "DiagnosticInfo",
    "DiagnosticHint",
    "DiagnosticUnderlineError",
    -- LSP
    "LspReferenceText",
    "LspInlayHint",
  }

  for _, name in ipairs(must_exist) do
    it(name .. " is defined", function()
      -- A completely undefined group returns an empty table.
      local g = hl(name)
      local is_empty = next(g) == nil
      assert.is_false(is_empty, name .. " is not defined (empty highlight)")
    end)
  end
end)
