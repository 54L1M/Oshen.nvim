-- oshen/highlights.lua
-- Orchestrator: loads all group and integration modules and applies them.
-- To add a new integration, append its module path to the integrations list.

local M = {}

local groups = {
  "oshen.groups.editor",
  "oshen.groups.syntax",
  "oshen.groups.treesitter",
  "oshen.groups.lsp",
  "oshen.groups.semantic_tokens",
  "oshen.groups.terminal",
}

local integrations = {
  "oshen.integrations.gitsigns",
  "oshen.integrations.illuminate",
  "oshen.integrations.blink",
  "oshen.integrations.oil",
  "oshen.integrations.snacks",
  "oshen.integrations.whichkey",
  "oshen.integrations.ufo",
  "oshen.integrations.render_markdown",
  "oshen.integrations.todo_comments",
  "oshen.integrations.treesitter_context",
  "oshen.integrations.dap",
  "oshen.integrations.harpoon",
  "oshen.integrations.mini",
  "oshen.integrations.tiny_inline_diagnostic",
}

function M.apply(p, transparent)
  for _, mod in ipairs(groups) do
    require(mod).apply(p, transparent)
  end
  for _, mod in ipairs(integrations) do
    require(mod).apply(p, transparent)
  end
end

return M
