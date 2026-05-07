-- oshen/groups/terminal.lua
-- Neovim built-in terminal color slots (vim.g.terminal_color_N).
-- These map to the 16 ANSI colors inside :terminal buffers.
-- Kept in sync with ghostty/config palette entries.

local M = {}

function M.apply(p, _transparent)
  vim.g.terminal_color_0 = p.crust -- black
  vim.g.terminal_color_1 = p.red -- red
  vim.g.terminal_color_2 = p.green -- green
  vim.g.terminal_color_3 = p.amber -- yellow
  vim.g.terminal_color_4 = p.steel -- blue
  vim.g.terminal_color_5 = p.lavender -- magenta
  vim.g.terminal_color_6 = p.teal -- cyan
  vim.g.terminal_color_7 = p.cream -- white
  vim.g.terminal_color_8 = p.overlay1 -- bright black (comments in terminal)
  vim.g.terminal_color_9 = "#ed7a8a" -- bright red
  vim.g.terminal_color_10 = "#b8d98f" -- bright green
  vim.g.terminal_color_11 = "#ffc933" -- bright yellow
  vim.g.terminal_color_12 = "#5a9bbf" -- bright blue
  vim.g.terminal_color_13 = "#d4b0e8" -- bright magenta
  vim.g.terminal_color_14 = "#bde8ea" -- bright cyan
  vim.g.terminal_color_15 = "#ffffff" -- bright white
end

return M
