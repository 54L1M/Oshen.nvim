-- oshen/groups/syntax.lua
-- Legacy vim syntax highlight groups (used by non-treesitter parsers and plugins).

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("Comment",        { fg = p.overlay1, italic = true })

  hi("Constant",       { fg = p.lavender })
  hi("String",         { fg = p.green })
  hi("Character",      { fg = p.green })
  hi("Number",         { fg = p.amber })
  hi("Boolean",        { fg = p.amber })
  hi("Float",          { fg = p.amber })

  hi("Identifier",     { fg = p.text })
  hi("Function",       { fg = p.teal })

  hi("Statement",      { fg = p.amber })
  hi("Conditional",    { fg = p.amber })
  hi("Repeat",         { fg = p.amber })
  hi("Label",          { fg = p.amber })
  hi("Operator",       { fg = p.overlay2 })
  hi("Keyword",        { fg = p.amber })
  hi("Exception",      { fg = p.red })

  hi("PreProc",        { fg = p.lavender })
  hi("Include",        { fg = p.amber })
  hi("Define",         { fg = p.amber })
  hi("Macro",          { fg = p.amber })
  hi("PreCondit",      { fg = p.amber })

  hi("Type",           { fg = p.lavender, italic = true })
  hi("StorageClass",   { fg = p.amber })
  hi("Structure",      { fg = p.lavender, italic = true })
  hi("Typedef",        { fg = p.lavender, italic = true })

  hi("Special",        { fg = p.sky })
  hi("SpecialChar",    { fg = p.sky })
  hi("Tag",            { fg = p.teal })
  hi("Delimiter",      { fg = p.overlay2 })
  hi("SpecialComment", { fg = p.overlay1, italic = true })
  hi("Debug",          { fg = p.peach })

  hi("Underlined",     { underline = true })
  hi("Ignore",         { fg = p.overlay0 })
  hi("Error",          { fg = p.red })
  hi("Todo",           { fg = p.base, bg = p.amber, bold = true })
end

return M
