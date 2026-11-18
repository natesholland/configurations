# LazyVim configuration

A portable [LazyVim](https://www.lazyvim.org/) configuration with One Dark Pro colors matched to VS Code.

## Requirements

- Neovim 0.11.2+ with LuaJIT and Git 2.19+.
- A terminal with true-color support; a Nerd Font is recommended for icons.
- `ripgrep` and `fd` for searching, and a C compiler for Tree-sitter parsers.
- Language runtimes and tools for the enabled extras as needed (for example, Node.js and Python).

Plugins are downloaded automatically on first launch. `lazy-lock.json` records their versions; downloaded plugins, caches, and history are not included here.

## Install

From the root of this repository, link this folder into Neovim's configuration location. The commands below preserve an existing configuration by moving it to a timestamped backup:

```sh
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
target="$config_home/nvim"
mkdir -p "$config_home"
if [ -e "$target" ] || [ -L "$target" ]; then
  mv "$target" "$target.backup.$(date +%Y%m%d-%H%M%S)"
fi
ln -s "$PWD/lazyvim" "$target"
nvim
```

Alternatively, copy this folder to your Neovim configuration location instead of linking it. After installation, run `:checkhealth` to check for missing system dependencies. To apply the recorded versions to an existing plugin installation, use `:Lazy restore`.

## Files

- `init.lua` — entry point.
- `lua/config/lazy.lua` — plugin manager bootstrap and setup.
- `lua/config/options.lua`, `keymaps.lua`, and `autocmds.lua` — personal settings and hooks.
- `lua/plugins/colorscheme.lua` — One Dark Pro, VS Code palette adjustments, and statusline theme.
- `lua/plugins/example.lua` — disabled starter examples; not loaded as plugins.
- `lazyvim.json` — enabled Docker, JSON, Markdown, Python, TOML, and TypeScript extras.
- `lazy-lock.json` — pinned plugin versions.

Edit the files in this folder after linking it; Neovim will use them directly.

## Current machine

This folder was copied from `~/.config/nvim`. The original configuration was left unchanged and is still active until you choose to install or link this copy.
