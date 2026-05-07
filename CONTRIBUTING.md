# Contributing to Oshen.nvim

Thanks for taking the time. Contributions are welcome — bug fixes, new plugin integrations, and palette refinements all fit. If you're unsure whether something is in scope, open an issue first.

---

## Setup

You need Neovim >= 0.9, Git, and [StyLua](https://github.com/JohnnyMorganz/StyLua) on your PATH. No other tools are required to get started.

```bash
git clone https://github.com/54L1M/Oshen.nvim
cd Oshen.nvim
```

The test runner fetches [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) automatically on first run:

```bash
make test
```

Check formatting without writing anything:

```bash
make format-check
```

Apply formatting in-place:

```bash
make format
```

---

## Project layout

```
lua/oshen/
├── init.lua              public API: setup(), load(), get_palette()
├── palette.lua           single source of truth for all colors
├── highlights.lua        orchestrator — loads groups + integrations
├── groups/               core Neovim highlight groups
└── integrations/         one file per supported plugin
```

All color values live exclusively in `palette.lua`. Nothing else should hardcode hex strings.

---

## Adding a plugin integration

1. Create `lua/oshen/integrations/myplugin.lua`:

```lua
local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(p, transparent)
  hi("MyPluginNormal", { fg = p.text, bg = transparent and p.none or p.mantle })
end

return M
```

2. Add `"oshen.integrations.myplugin"` to the `integrations` list in `highlights.lua`.

3. Add the plugin to the support table in `README.md`.

A few rules for integration files:

- Only use colors from the palette (`p.*`). No raw hex strings.
- Respect `transparent` for any group that sets a background on a full-width surface (statusline fills, sidebar backgrounds, etc.). Floating windows and decorative elements do not need to follow transparency.
- Keep the file flat — one `M.apply` function, no module-level side effects.

---

## Commit style

Follow the [Conventional Commits](https://www.conventionalcommits.org) format used in this repo:

```
<type>: <short summary>

<optional body — what and why, not how>
```

Common types: `fix`, `feat`, `style`, `refactor`, `test`, `chore`, `docs`.

The subject line should be 72 characters or fewer and written in the imperative ("add support for X", not "added" or "adds").

---

## Running the tests

```bash
make test
```

Plenary is cloned into `.tests/` on first run (gitignored). Tests run headlessly — no Neovim window opens.

When fixing a bug, add or update a test that would have caught it. When adding a new group or integration, there's no requirement to add tests, but checking that the group appears in the completeness list in `tests/highlights_spec.lua` is appreciated.

---

## Pull requests

- Keep PRs focused — one integration or one fix per PR.
- Run `make test` and `make format-check` before opening a PR. Both must pass.
- A short description of the plugin (what it does, why the colors were chosen) is enough for an integration PR.
