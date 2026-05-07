# Security Policy

## Scope

Oshen.nvim is a Neovim colorscheme — it sets highlight groups and reads palette values. It does not handle user data, network requests, authentication, or persistent storage.

The most plausible security concern is **malicious code execution**: a compromised release or a supply-chain attack that turns a seemingly innocent Lua file into something that runs arbitrary commands when the colorscheme is loaded.

## Supported versions

Only the latest commit on `master` is actively maintained. No backports are made to older releases.

## Reporting a vulnerability

If you find something that could cause harm when a user loads this plugin — unexpected code execution, exfiltration of environment variables, anything of that nature — please **do not open a public issue**.

Report it privately via [GitHub's private vulnerability reporting](https://github.com/54L1M/Oshen.nvim/security/advisories/new).

Include:
- A description of the issue and its potential impact
- Steps to reproduce or a minimal proof of concept

You can expect an acknowledgement within a few days. If the report is valid, a fix and a public advisory will be issued together.
