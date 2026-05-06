-- oshen/integrations/oil.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("OilDir",              { fg = p.teal,   bold = true })
  hi("OilDirIcon",          { fg = p.teal })
  hi("OilFile",             { fg = p.text })
  hi("OilLink",             { fg = p.green,  italic = true })
  hi("OilLinkTarget",       { fg = p.green })
  hi("OilOrphanLink",       { fg = p.peach,  italic = true })
  hi("OilOrphanLinkTarget", { fg = p.peach })
  hi("OilSocket",           { fg = p.lavender })
  hi("OilPipe",             { fg = p.lavender })
  hi("OilCreate",           { fg = p.green })
  hi("OilDelete",           { fg = p.red })
  hi("OilMove",             { fg = p.teal })
  hi("OilCopy",             { fg = p.sky })
  hi("OilChange",           { fg = p.peach })
  hi("OilHidden",           { fg = p.overlay1 })
end

return M
