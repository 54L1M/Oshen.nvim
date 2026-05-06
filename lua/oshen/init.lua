-- oshen/init.lua
-- Public API for Oshen.nvim
--
-- Usage in lazy.nvim:
--   require("oshen").setup({ transparent = true })
--
-- Accessing the palette from another plugin (e.g. lualine):
--   local p = require("oshen").get_palette()

local M = {}

---@class OshenOptions
---@field transparent boolean  Remove all background colors (default: false)

M.defaults = {
  transparent = false,
}

---@type OshenOptions
M.options = {}

--- Configure Oshen. Call this before colorscheme is loaded.
---@param opts? ShenOptions
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

--- Apply the colorscheme. Called automatically by colors/Oshen.lua.
function M.load()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "Oshen"

  local transparent = M.options.transparent or false
  local p = require("oshen.palette").colors
  require("oshen.highlights").apply(p, transparent)
end

--- Return the raw color palette so other plugins can consume it.
---@return table
function M.get_palette()
  return require("oshen.palette").colors
end

return M
