-- oshen/integrations/render_markdown.lua

local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, _transparent)
  hi("RenderMarkdownH1", { fg = p.amber, bold = true })
  hi("RenderMarkdownH2", { fg = p.teal, bold = true })
  hi("RenderMarkdownH3", { fg = p.lavender, bold = true })
  hi("RenderMarkdownH4", { fg = p.green, bold = true })
  hi("RenderMarkdownH5", { fg = p.sky, bold = true })
  hi("RenderMarkdownH6", { fg = p.steel, bold = true })
  hi("RenderMarkdownH1Bg", { bg = "#18121a" })
  hi("RenderMarkdownH2Bg", { bg = "#101520" })
  hi("RenderMarkdownCode", { bg = p.mantle })
  hi("RenderMarkdownCodeInline", { fg = p.green, bg = p.mantle })
  hi("RenderMarkdownBullet", { fg = p.amber })
  hi("RenderMarkdownLink", { fg = p.sky, underline = true })
  hi("RenderMarkdownTableHead", { fg = p.amber, bold = true })
  hi("RenderMarkdownTableRow", { fg = p.text })
  hi("RenderMarkdownTableFill", { fg = p.overlay1 })
  hi("RenderMarkdownQuote", { fg = p.subtext0, italic = true })
  hi("RenderMarkdownDash", { fg = p.overlay0 })
  hi("RenderMarkdownSuccess", { fg = p.green })
  hi("RenderMarkdownInfo", { fg = p.teal })
  hi("RenderMarkdownWarn", { fg = p.peach })
  hi("RenderMarkdownError", { fg = p.red })
  hi("RenderMarkdownHint", { fg = p.lavender })
  hi("RenderMarkdownTodo", { fg = p.amber })
end

return M
