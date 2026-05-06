-- oshen/integrations/illuminate.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("IlluminatedWordText",  { bg = p.surface0 })
  hi("IlluminatedWordRead",  { bg = p.surface0 })
  hi("IlluminatedWordWrite", { bg = p.surface0, underline = true, sp = p.amber })
end

return M
