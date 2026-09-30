# Neovim Configuration

A Lua-based Neovim setup with lazy-loaded plugins, LSP support, Blink completion,
AI chat and completion, Treesitter, debugging, and a Catppuccin interface.

This is a personal configuration. Review `lua/user/settings.lua` before using it:
it contains machine-specific package exclusions and AI provider preferences.

## Features

- **Interface:** Catppuccin, Lualine, Bufferline, Alpha dashboard, notifications,
  and Edgy panels.
- **Completion:** `blink.cmp`, LuaSnip, friendly-snippets, and sources for LSP,
  buffers, paths, ripgrep, spelling, tmux, and LaTeX symbols.
- **Language tooling:** native LSP configuration, Mason-managed tools, Lspsaga,
  inline diagnostics, and none-ls formatting.
- **AI:** CodeCompanion chat, Minuet OpenAI-compatible completion, and optional
  Copilot completion. CopilotChat is included in the user plugin specs.
- **Navigation:** Telescope or FzfLua, nvim-tree, Dropbar, Flash, Hop, and
  Treesitter text objects.
- **Editing:** syntax highlighting, context-aware comments, automatic tags and
  brackets, search-and-replace, and session persistence.
- **Git and terminals:** Gitsigns, Fugitive, Diffview, and ToggleTerm.
- **Debugging:** nvim-dap and DAP UI, with configuration for CodeLLDB, Delve,
  debugpy, and LLDB.

## Installation

### Prerequisites

- A Neovim build with `vim.lsp.config` and `vim.lsp.enable` support (0.11 or
  newer). Individual plugin revisions may require a newer version; check
  `:checkhealth` after installation.
- Git and network access to download plugins, parsers, and language tools.
- A C compiler and `make` for native plugin components and Treesitter parsers.
- `ripgrep` for text search; `fd` for file finding.
- A Nerd Font configured in your terminal for icons.
- Language runtimes needed by the tools you enable, such as Node.js/npm,
  Python, Go, a JDK, or the Rust toolchain.

Optional tools include `lazygit`, `fzf`, and `zoxide` for the corresponding
integrations. AI features need credentials for your selected provider.

### Set up the configuration

Back up your existing configuration first. On macOS/Linux, using the default
configuration path:

```sh
if [ -e "$HOME/.config/nvim" ]; then
  mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%Y%m%d-%H%M%S)"
fi
git clone https://github.com/channinghsu/nvim.git "$HOME/.config/nvim"
```

Review `lua/user/settings.lua`, then start `nvim`. The configuration bootstraps
lazy.nvim and installs missing plugins. Mason and Treesitter request their
configured tools and parsers when their plugins load, so installation may
continue after the initial plugin screen closes.

Restart Neovim after installation and inspect `:Lazy`, `:Mason`, `:checkhealth`,
and `:messages`. Plugin downloads use HTTPS with the current user settings.
Set `use_ssh = true` only if GitHub SSH authentication is configured.

## Configuration Layout

```text
init.lua                    Entry point; skips this setup under VSCode
lua/core/                   Startup, base settings, options, events, plugin loader
lua/keymap/                 Base keymaps and mapping helpers
lua/modules/plugins/        Plugin specs grouped by category
lua/modules/configs/        Plugin and language-tool configuration
lua/modules/utils/          Shared utilities, icons, and AI adapter helpers
lua/user/settings.lua       Personal overrides for core settings
lua/user/options.lua        Personal Neovim options
lua/user/event.lua          Personal autocommands
lua/user/dashboard.lua      Dashboard artwork
lua/user/keymap/            Personal mappings
lua/user/plugins/           Additional plugin specs
lua/user/configs/           Plugin configuration overrides
snips/                      Custom snippets
lazy-lock.json              Locked plugin revisions
```

Prefer changes under `lua/user/` rather than editing the base configuration.
These files are tracked by Git, so preserve your modifications when updating.

### Settings and merge behavior

`lua/core/settings.lua` is merged with the table returned by
`lua/user/settings.lua`:

- Scalar settings replace the base value.
- Dictionary tables merge recursively.
- List settings append to the base list rather than replacing it.
- A function assigned to a table setting receives the existing table and returns
  its replacement. Use this to filter or replace package lists.
- `dashboard_image` is replaced rather than appended.

Add changes before `return settings` in `lua/user/settings.lua`. For example:

```lua
settings["search_backend"] = "fzf"
settings["format_on_save"] = true
settings["transparent_background"] = false
settings["lsp_inlayhints"] = true

settings["lsp_deps"] = function(defaults)
  local servers = vim.deepcopy(defaults)
  table.insert(servers, "jdtls")
  return servers
end
```

The supplied user settings turn off format-on-save, enable transparency, and
select Chinese AI responses. Telescope remains the base search backend.

**Boolean override caveat:** the current `apply_defaults()` helper in
`lua/user/settings.lua` uses `value and value or true` for several settings.
Explicit `false` values for `use_copilot`, `copilot_chat`, `use_chat`, and
`format_notify` therefore become `true`. To override these without changing the
helper, assign them after `apply_defaults()` and before `return settings`.

### Plugins and keymaps

Files under `lua/user/plugins/` return tables keyed by plugin repository name.
The loader combines these with the base plugin specs. To disable a plugin,
append its lazy.nvim name to `settings["disabled_plugins"]`.

Plugin setups that call `modules.utils.load_plugin` look for overrides at
`lua/user/configs/<config-file-basename>.lua`. Return a table to merge options,
a function to customize setup, or `false` to skip that setup. Skipping setup
does not uninstall or disable the plugin itself.

Personal keymaps are assembled by `lua/user/keymap/init.lua`. LSP-specific
mappings are supplied by `lua/user/keymap/completion.lua` when a server attaches.

## Language Tools

Base LSP installation requests cover Bash, C/C++, Go, HTML, JSON, Lua, Ruff,
and Pyrefly. The current user settings exclude `gopls` and `pyrefly` and add
`jdtls` for Java. Rust uses Rustaceanvim separately; Dart is configured when
the `dart` executable is available.

The base formatter/linter list includes clang-format, gofumpt, goimports,
Prettier, shfmt, StyLua, and Vint. The current user settings exclude
clang-format, gofumpt, goimports, and Vint from automatic installation.
The DAP installation list includes CodeLLDB, Delve, and Python; the user
settings exclude Delve.

These exclusions affect automatic installation, not necessarily tools already
installed on your machine. Review them when enabling another language.

To extend support:

1. Add a server to `lsp_deps` and its runtime to your system.
2. Put custom server options in `lua/user/configs/lsp-servers/<server>.lua`.
3. Add formatters/linters to `null_ls_deps` as needed.
4. Add syntax parsers to `treesitter_deps`.
5. Add debug adapters to `dap_deps` and review the configurations under
   `lua/modules/configs/tool/dap/`.

Use `:Mason` to inspect installation status and restart Neovim after installing
new servers. Parser installation alone does not provide LSP or debugging.

## AI Setup

Chat and completion share adapter definitions in `settings["ai_adapters"]`.
Credentials are read from environment variables; do not put API keys in Lua
files or commit them to this repository.

The current user configuration defines a `tequila` OpenAI-compatible adapter:

- `OPENAI_API_KEY` supplies the credential.
- `OPENAI_BASE_URL` optionally overrides the configured endpoint.
- `codecompanion_adapter` selects the chat adapter.
- `edit_prediction_source = "oai-compatible"` selects Minuet completion.
- `pred_adapter` and `pred_model` select the completion adapter and model.

Export credentials through your shell or secret manager before launching
Neovim. An example for a provider you choose:

```sh
export OPENAI_API_KEY='your-provider-key'
export OPENAI_BASE_URL='https://your-provider.example/v1'
nvim
```

The adapter appends its configured `chat_url` to `base_url`; the current user
adapter uses `/chat/completions`. Use model identifiers supported by your
provider. Model lists in this repository are configuration choices, not a
guarantee of availability or pricing.

For Copilot completion, set `edit_prediction_source = "copilot"` and
`use_copilot = true`, then authenticate with `:Copilot auth`. CopilotChat has
its own user plugin spec and is not gated by the `copilot_chat` setting;
disable `CopilotChat.nvim` through `disabled_plugins` if you do not want it.

## Keybindings

The leader key is **Space**. Use **Ctrl-p** to browse registered keymaps.
These shortcuts reflect the included user overrides, not just the base maps.

### Everyday editing

- `H` / `L`: previous / next buffer.
- `<leader>x`: close the current buffer.
- `jk` in Insert mode: leave Insert mode and save.
- `<leader>i`: select the entire buffer.
- `<leader>q`: **quit all windows without saving**.
- `Ctrl-n`: toggle the left panel/file tree.
- `<leader>ff`: find files; `<leader>fp`: search patterns.
- `<leader>fe`: recent files.
- `Ctrl-\`: toggle the horizontal terminal.
- `Esc Esc` in Terminal mode: return to Normal mode.

### Language tooling and completion

- `gd`: go to definition; `gD`: preview definitions with Glance.
- `K`: hover documentation when an LSP is attached.
- `ga`: code actions; `gr`: rename.
- `<leader>ld`: buffer diagnostics.
- `<leader>r` with an LSP attached: run `:make` via the user override.
- Completion menu: `Ctrl-n` / `Ctrl-p` select entries, `Enter` accepts,
  `Ctrl-w` cancels, and `Ctrl-d` / `Ctrl-f` scroll documentation.
- `Tab`: select the next completion, advance a snippet, or fall back to normal
  behavior, depending on context.

### AI

- `<leader>cc`: toggle the right-side CodeCompanion panel.
- `<leader>cs`: choose a chat model.
- `<leader>ck`: CodeCompanion actions.
- `<leader>ca` in Visual mode: add the selection to CodeCompanion chat.
- `<leader>av`: toggle CopilotChat.
- `<leader>ae` / `<leader>af`: explain / fix code with CopilotChat.
- `<leader>at`: generate tests with CopilotChat.

## Maintenance and Troubleshooting

- **Plugin status:** use `:Lazy`; `:Lazy sync` installs, updates, and cleans
  plugins and can change `lazy-lock.json`. Use `:Lazy restore` to restore the
  revisions recorded in the lockfile.
- **Startup errors:** inspect `:messages` and `:checkhealth`. Confirm your
  Neovim version supports the configured plugins before changing settings.
- **Tool installation failures:** inspect `:Mason` and `:MasonLog`, check
  network access and required runtimes, and review the user package exclusions.
- **No LSP navigation:** check `:LspInfo`, the buffer filetype, and the server
  installation. Restart after a new server finishes installing.
- **No search results:** ensure `rg` is on `PATH`; review ignore rules and the
  selected search backend.
- **Formatting does not run on save:** the supplied user configuration disables
  it. Enable `format_on_save` and check formatter/server block lists in the base
  settings.
- **AI requests fail:** verify the environment visible to Neovim, adapter URL,
  credentials, and provider model access without printing or sharing secrets.
- **Unexpected shortcuts:** use `:verbose nmap <key>` to locate the active
  mapping. User and buffer-local LSP mappings can override base mappings.

Before pulling repository updates, review `git status` and preserve local
changes, especially under `lua/user/`. Avoid deleting your Neovim data or cache
as a first troubleshooting step; those directories can contain sessions,
undo history, installed tools, and other state.

## Acknowledgments

This configuration builds on ideas and utilities from nvimdots and the work
of the Neovim and plugin communities. Plugin repository names and configuration
entry points are listed in `lua/modules/plugins/` and `lua/user/plugins/`.
