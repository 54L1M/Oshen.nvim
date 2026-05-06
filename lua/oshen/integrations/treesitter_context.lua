-- oshen/integrations/treesitter_context.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  -- surface1 gives a clearly distinct background from the editor (base),
  -- while the steel underline draws the eye to the context boundary.
  hi("TreesitterContext",           { bg = p.surface1, italic = true })
  hi("TreesitterContextLineNumber", { fg = p.subtext0, bg = p.surface1 })
  hi("TreesitterContextSeparator",  { fg = p.steel })
  hi("TreesitterContextBottom",     { underline = true, sp = p.steel })
end

return M
