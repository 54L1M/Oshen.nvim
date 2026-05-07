-- oshen/integrations/todo_comments.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("TodoBgTODO", { fg = p.base, bg = p.amber, bold = true })
  hi("TodoFgTODO", { fg = p.amber })
  hi("TodoSignTODO", { fg = p.amber })

  hi("TodoBgFIX", { fg = p.base, bg = p.red, bold = true })
  hi("TodoFgFIX", { fg = p.red })
  hi("TodoSignFIX", { fg = p.red })

  hi("TodoBgWARN", { fg = p.base, bg = p.peach, bold = true })
  hi("TodoFgWARN", { fg = p.peach })
  hi("TodoSignWARN", { fg = p.peach })

  hi("TodoBgNOTE", { fg = p.base, bg = p.teal, bold = true })
  hi("TodoFgNOTE", { fg = p.teal })
  hi("TodoSignNOTE", { fg = p.teal })

  hi("TodoBgHACK", { fg = p.base, bg = p.lavender, bold = true })
  hi("TodoFgHACK", { fg = p.lavender })
  hi("TodoSignHACK", { fg = p.lavender })

  hi("TodoBgPERF", { fg = p.base, bg = p.green, bold = true })
  hi("TodoFgPERF", { fg = p.green })
  hi("TodoSignPERF", { fg = p.green })

  hi("TodoBgTEST", { fg = p.base, bg = p.steel, bold = true })
  hi("TodoFgTEST", { fg = p.steel })
  hi("TodoSignTEST", { fg = p.steel })
end

return M
