-- oshen/integrations/gitsigns.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("GitSignsAdd", { fg = p.green })
  hi("GitSignsChange", { fg = p.amber })
  hi("GitSignsDelete", { fg = p.red })
  hi("GitSignsAddNr", { fg = p.green })
  hi("GitSignsChangeNr", { fg = p.amber })
  hi("GitSignsDeleteNr", { fg = p.red })
  hi("GitSignsAddLn", { bg = "#0d2018" })
  hi("GitSignsChangeLn", { bg = "#0d1a2e" })
  hi("GitSignsStagedAdd", { fg = p.green, bold = true })
  hi("GitSignsStagedChange", { fg = p.amber, bold = true })
  hi("GitSignsStagedDelete", { fg = p.red, bold = true })
  hi("GitSignsCurrentLineBlame", { fg = p.overlay1, italic = true })
end

return M
