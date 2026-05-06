-- oshen/groups/semantic_tokens.lua
-- LSP semantic token highlight groups (@lsp.type.* and @lsp.mod.*).

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  -- ── Types ─────────────────────────────────────────────────────────────
  hi("@lsp.type.class",          { fg = p.lavender, italic = true })
  hi("@lsp.type.decorator",      { fg = p.lavender })
  hi("@lsp.type.enum",           { fg = p.lavender, italic = true })
  hi("@lsp.type.enumMember",     { fg = p.text })
  hi("@lsp.type.interface",      { fg = p.lavender, italic = true })
  hi("@lsp.type.struct",         { fg = p.lavender, italic = true })
  hi("@lsp.type.type",           { fg = p.lavender, italic = true })
  hi("@lsp.type.typeParameter",  { fg = p.lavender, italic = true })
  hi("@lsp.type.typeAlias",      { fg = p.lavender, italic = true })

  -- ── Functions & Methods ───────────────────────────────────────────────
  hi("@lsp.type.function",       { fg = p.teal })
  hi("@lsp.type.method",         { fg = p.teal })

  -- ── Variables & Parameters ────────────────────────────────────────────
  hi("@lsp.type.variable",       { fg = p.text })
  hi("@lsp.type.parameter",      { fg = p.subtext1 })
  hi("@lsp.type.property",       { fg = p.text })
  hi("@lsp.type.field",          { fg = p.text })

  -- ── Keywords & Operators ──────────────────────────────────────────────
  hi("@lsp.type.keyword",        { fg = p.amber })
  hi("@lsp.type.operator",       { fg = p.overlay2 })
  hi("@lsp.type.macro",          { fg = p.amber })
  hi("@lsp.type.builtinType",    { fg = p.lavender, italic = true })

  -- ── Namespaces ────────────────────────────────────────────────────────
  hi("@lsp.type.namespace",      { fg = p.teal })

  -- ── Literals ─────────────────────────────────────────────────────────
  hi("@lsp.type.string",         { fg = p.green })
  hi("@lsp.type.number",         { fg = p.amber })
  hi("@lsp.type.boolean",        { fg = p.amber })
  hi("@lsp.type.character",      { fg = p.green })
  hi("@lsp.type.selfKeyword",    { fg = p.amber, italic = true })
  hi("@lsp.type.lifetime",       { fg = p.peach })
  hi("@lsp.type.escapeSequence", { fg = p.sky })
  hi("@lsp.type.formatSpecifier",{ fg = p.sky })

  -- ── Comments ──────────────────────────────────────────────────────────
  hi("@lsp.type.comment",        { fg = p.overlay1, italic = true })

  -- ── Modifiers ────────────────────────────────────────────────────────
  hi("@lsp.mod.deprecated",      { strikethrough = true })
  hi("@lsp.mod.readonly",        { italic = true })
  hi("@lsp.mod.static",          { italic = true })
  hi("@lsp.mod.abstract",        { italic = true })
  hi("@lsp.mod.async",           { fg = p.amber, italic = true })
  hi("@lsp.mod.documentation",   { fg = p.overlay1, italic = true })
  hi("@lsp.mod.injected",        {})  -- let treesitter handle injected languages
end

return M
