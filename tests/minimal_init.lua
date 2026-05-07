-- tests/minimal_init.lua
-- Stripped-down Neovim config used only when running the test suite.
-- Prepends the plugin root and plenary to runtimepath, then bootstraps plenary.

vim.opt.runtimepath:prepend(".")
vim.opt.runtimepath:prepend(".tests/plenary.nvim")

vim.cmd("runtime plugin/plenary.vim")
