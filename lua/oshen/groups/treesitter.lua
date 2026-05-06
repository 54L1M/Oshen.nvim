-- oshen/groups/treesitter.lua
-- Treesitter capture groups (@capture.name).

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  -- ── Comments ─────────────────────────────────────────────────────────
  hi("@comment",                 { fg = p.overlay1, italic = true })
  hi("@comment.documentation",   { fg = p.overlay1, italic = true })
  hi("@comment.error",           { fg = p.red,      bold = true })
  hi("@comment.warning",         { fg = p.peach,    bold = true })
  hi("@comment.todo",            { fg = p.amber,    bold = true })
  hi("@comment.note",            { fg = p.teal,     bold = true })

  -- ── Literals ─────────────────────────────────────────────────────────
  hi("@string",                  { fg = p.green })
  hi("@string.escape",           { fg = p.sky })
  hi("@string.special",          { fg = p.sky })
  hi("@string.special.url",      { fg = p.sky, underline = true })
  hi("@string.regexp",           { fg = p.peach })
  hi("@character",               { fg = p.green })
  hi("@character.special",       { fg = p.sky })
  hi("@number",                  { fg = p.amber })
  hi("@number.float",            { fg = p.amber })
  hi("@boolean",                 { fg = p.amber })

  -- ── Functions ────────────────────────────────────────────────────────
  hi("@function",                { fg = p.teal })
  hi("@function.call",           { fg = p.teal })
  hi("@function.builtin",        { fg = p.teal })
  hi("@function.macro",          { fg = p.amber })
  hi("@function.method",         { fg = p.teal })
  hi("@function.method.call",    { fg = p.teal })
  hi("@constructor",             { fg = p.lavender })

  -- ── Variables ────────────────────────────────────────────────────────
  hi("@variable",                { fg = p.text })
  hi("@variable.builtin",        { fg = p.amber, italic = true })
  hi("@variable.parameter",      { fg = p.subtext1 })
  hi("@variable.parameter.builtin", { fg = p.amber, italic = true })
  hi("@variable.member",         { fg = p.text })

  -- ── Keywords ─────────────────────────────────────────────────────────
  hi("@keyword",                 { fg = p.amber })
  hi("@keyword.function",        { fg = p.amber })
  hi("@keyword.return",          { fg = p.amber })
  hi("@keyword.operator",        { fg = p.amber })
  hi("@keyword.import",          { fg = p.amber })
  hi("@keyword.conditional",     { fg = p.amber })
  hi("@keyword.conditional.ternary", { fg = p.amber })
  hi("@keyword.repeat",          { fg = p.amber })
  hi("@keyword.exception",       { fg = p.red })
  hi("@keyword.coroutine",       { fg = p.amber })
  hi("@keyword.debug",           { fg = p.peach })
  hi("@keyword.directive",       { fg = p.lavender })
  hi("@keyword.directive.define",{ fg = p.amber })

  -- ── Operators & Punctuation ───────────────────────────────────────────
  hi("@operator",                    { fg = p.overlay2 })
  hi("@punctuation.delimiter",       { fg = p.overlay2 })
  hi("@punctuation.bracket",         { fg = p.overlay2 })
  hi("@punctuation.special",         { fg = p.sky })

  -- ── Types ────────────────────────────────────────────────────────────
  hi("@type",                    { fg = p.lavender, italic = true })
  hi("@type.builtin",            { fg = p.lavender, italic = true })
  hi("@type.qualifier",          { fg = p.amber })
  hi("@type.definition",         { fg = p.lavender, italic = true })

  -- ── Attributes & Properties ───────────────────────────────────────────
  hi("@attribute",               { fg = p.lavender })
  hi("@attribute.builtin",       { fg = p.lavender })
  hi("@property",                { fg = p.text })
  hi("@field",                   { fg = p.text })

  -- ── Constants ────────────────────────────────────────────────────────
  hi("@constant",                { fg = p.lavender })
  hi("@constant.builtin",        { fg = p.amber })
  hi("@constant.macro",          { fg = p.amber })

  -- ── Modules & Namespaces ─────────────────────────────────────────────
  hi("@namespace",               { fg = p.teal })
  hi("@module",                  { fg = p.teal })
  hi("@module.builtin",          { fg = p.teal })
  hi("@label",                   { fg = p.amber })
  hi("@include",                 { fg = p.amber })

  -- ── Tags (HTML/JSX) ──────────────────────────────────────────────────
  hi("@tag",                     { fg = p.amber })
  hi("@tag.attribute",           { fg = p.sky })
  hi("@tag.builtin",             { fg = p.amber })
  hi("@tag.delimiter",           { fg = p.overlay2 })

  -- ── Markup ───────────────────────────────────────────────────────────
  hi("@markup.heading",          { fg = p.amber,    bold = true })
  hi("@markup.heading.1",        { fg = p.amber,    bold = true })
  hi("@markup.heading.2",        { fg = p.teal,     bold = true })
  hi("@markup.heading.3",        { fg = p.lavender, bold = true })
  hi("@markup.heading.4",        { fg = p.green,    bold = true })
  hi("@markup.heading.5",        { fg = p.sky,      bold = true })
  hi("@markup.heading.6",        { fg = p.steel,    bold = true })
  hi("@markup.italic",           { italic = true })
  hi("@markup.bold",             { bold = true })
  hi("@markup.underline",        { underline = true })
  hi("@markup.strikethrough",    { strikethrough = true })
  hi("@markup.link",             { fg = p.teal, underline = true })
  hi("@markup.link.url",         { fg = p.sky,  underline = true })
  hi("@markup.link.label",       { fg = p.teal })
  hi("@markup.raw",              { fg = p.green })
  hi("@markup.raw.block",        { fg = p.green })
  hi("@markup.list",             { fg = p.amber })
  hi("@markup.list.checked",     { fg = p.green })
  hi("@markup.list.unchecked",   { fg = p.overlay2 })
  hi("@markup.quote",            { fg = p.subtext0, italic = true })

  -- ── Diff ─────────────────────────────────────────────────────────────
  hi("@diff.plus",               { fg = p.green })
  hi("@diff.minus",              { fg = p.red })
  hi("@diff.delta",              { fg = p.sky })
end

return M
