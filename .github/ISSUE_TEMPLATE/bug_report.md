---
name: Bug report
about: Something looks wrong, broken, or missing
labels: bug
---

## Description

<!-- What did you expect to see, and what did you actually see? -->

## Environment

- Neovim version (`nvim --version`):
- Terminal / GUI:
- `transparent` option: `true` / `false`
- Relevant plugins (if the issue is integration-specific):

## How to reproduce

<!-- Minimal steps or a minimal config that triggers the issue. -->

```lua
require("oshen").setup({ transparent = false })
vim.cmd.colorscheme("Oshen")
```

## Screenshots or highlight output

<!-- Optional but very helpful. You can run `:hi <GroupName>` and paste the output. -->
