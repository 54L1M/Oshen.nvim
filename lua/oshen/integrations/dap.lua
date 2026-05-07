-- oshen/integrations/dap.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("DapBreakpoint", { fg = p.red })
  hi("DapBreakpointCond", { fg = p.peach })
  hi("DapLogPoint", { fg = p.teal })
  hi("DapStopped", { fg = p.amber })
  hi("DapStoppedLine", { bg = p.surface0 })
  hi("DapBreakpointRejected", { fg = p.overlay1 })
end

return M
