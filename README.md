<div align="center">

# 🚀 Neovim Configuration

A modern, feature-rich Neovim configuration built for productivity and aesthetics.

[![Neovim](https://img.shields.io/badge/Neovim-0.9+-blue?logo=neovim&logoColor=green)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Lua-5.1+-blue?logo=lua)](https://www.lua.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

[Features](#-features) • [Installation](#-installation) • [Plugins](#-plugins) • [Keymaps](#-keymaps) • [Configuration](#-configuration) • [Languages](#-languages)

</div>

---

## ✨ Features

- 🎨 **Beautiful UI** - Catppuccin colorscheme with custom dashboard and statusline
- 🧠 **LSP Integration** - Full LSP support with auto-completion and diagnostics
- 🤖 **AI Assistant** - Built-in AI chat with CodeCompanion (supports multiple models)
- 🔍 **Fuzzy Finding** - Telescope/FzfLua for files, grep, and more
- 🐛 **Debug Support** - DAP integration for C/C++, Go, Python, and Rust
- 📦 **Package Management** - Lazy.nvim for fast plugin loading
- 🌳 **Git Integration** - Gitsigns, Fugitive, and advanced git search
- 🎯 **Smart Navigation** - Hop, Flash, and Dropbar for quick movement
- 💾 **Session Management** - Automatic session persistence
- 🔧 **Auto-formatting** - Format on save with null-ls/none-ls
- 📝 **Snippet Support** - LuaSnip with friendly-snippets
- 🎭 **Treesitter** - Advanced syntax highlighting and code understanding
- 🖥️ **Terminal Integration** - Toggleterm for integrated terminal

## 📋 Requirements

- Neovim >= 0.9.0
- Git >= 2.23.0
- Node.js (for some LSP servers)
- A [Nerd Font](https://www.nerdfonts.com/) (recommended: JetBrainsMono Nerd Font)
- Ripgrep (for telescope live grep)
- fd (optional, for faster file searching)
- lazygit (optional, for git UI)

## 🚀 Installation

### Backup Existing Configuration

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Clone Configuration

```bash
git clone git@github.com:channinghsu/nvim ~/.config/nvim
```

### First Launch

```bash
nvim
```

On first launch, the configuration will automatically:
- Install lazy.nvim plugin manager
- Download and install all plugins
- Install LSP servers via Mason
- Install Treesitter parsers
- Set up DAP adapters

## 🎨 Customization

This configuration supports extensive customization through user overrides:

### User Directory Structure

```
~/.config/nvim/lua/user/
├── configs/        # Override plugin configs
├── keymap/         # Custom keybindings
├── plugins/        # Additional plugins
├── event.lua       # Custom autocommands
├── options.lua     # Custom vim options
└── settings.lua    # Override core settings
```

### Core Settings

Edit `lua/core/settings.lua` or create `lua/user/settings.lua`:

```lua
local settings = {}

settings["use_copilot"] = true           -- Enable GitHub Copilot
settings["format_on_save"] = true        -- Auto-format on save
settings["colorscheme"] = "catppuccin"   -- Colorscheme
settings["search_backend"] = "telescope" -- "telescope" or "fzf"
settings["use_chat"] = true              -- Enable AI chat

return settings
```

## 🔌 Plugins

### Completion & LSP

| Plugin | Description |
|--------|-------------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/DAP/Linter installer |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | Enhanced LSP UI |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot integration |
| [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) | Formatting and linting |

### Editor Enhancement

| Plugin | Description |
|--------|-------------|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [flash.nvim](https://github.com/folke/flash.nvim) | Enhanced navigation |
| [hop.nvim](https://github.com/smoka7/hop.nvim) | Quick jump to locations |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Smart commenting |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | Search and replace |
| [mini.align](https://github.com/echasnovski/mini.align) | Text alignment |
| [autoclose.nvim](https://github.com/m4xshen/autoclose.nvim) | Auto-close pairs |
| [persisted.nvim](https://github.com/olimorris/persisted.nvim) | Session management |

### Tools

| Plugin | Description |
|--------|-------------|
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Alternative fuzzy finder |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal management |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics list |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug adapter |
| [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) | AI chat assistant |
| [dropbar.nvim](https://github.com/Bekaboo/dropbar.nvim) | Winbar with context |

### UI

| Plugin | Description |
|--------|-------------|
| [catppuccin](https://github.com/catppuccin/nvim) | Colorscheme |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | Notification manager |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODOs |
| [edgy.nvim](https://github.com/folke/edgy.nvim) | Window layout manager |

### Language Support

| Language | LSP | DAP | Extras |
|----------|-----|-----|--------|
| **Lua** | lua_ls | - | stylua formatting |
| **Go** | gopls | delve | go.nvim, goimports, gofumpt |
| **Rust** | rust-analyzer | codelldb | rustaceanvim, crates.nvim |
| **Python** | pylsp | debugpy | - |
| **C/C++** | clangd | codelldb/lldb | clang-format |
| **JavaScript/TypeScript** | ts_ls | - | prettier |
| **Bash** | bashls | - | shfmt |
| **HTML/CSS** | html | - | prettier |
| **JSON** | jsonls | - | prettier |
| **Markdown** | - | - | render-markdown, markdown-preview |

## ⌨️ Keymaps

> Leader key: `<Space>`

### General

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>w` | n | Save file |
| `<Leader>q` | n | Quit |
| `<Esc>` | n | Clear search highlight |
| `<C-h/j/k/l>` | n | Navigate splits |
| `<C-Up/Down>` | n | Resize splits |

### File Navigation

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>ff` | n | Find files |
| `<Leader>fw` | n | Live grep |
| `<Leader>fb` | n | Find buffers |
| `<Leader>fo` | n | Find old files |
| `<Leader>fp` | n | Find projects |
| `<Leader>e` | n | Toggle file explorer |

### LSP

| Key | Mode | Action |
|-----|------|--------|
| `gd` | n | Go to definition |
| `gr` | n | Find references |
| `K` | n | Hover documentation |
| `<Leader>ca` | n | Code action |
| `<Leader>rn` | n | Rename |
| `[d` / `]d` | n | Previous/Next diagnostic |
| `<Leader>ld` | n | Open diagnostics list |

### Git

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>gg` | n | Lazygit |
| `<Leader>gd` | n | Diff view |
| `<Leader>gb` | n | Git blame |
| `]g` / `[g` | n | Next/Previous hunk |

### Debug (DAP)

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>db` | n | Toggle breakpoint |
| `<Leader>dc` | n | Continue |
| `<Leader>di` | n | Step into |
| `<Leader>do` | n | Step over |
| `<Leader>dO` | n | Step out |
| `<Leader>dr` | n | Toggle REPL |

### AI Chat

| Key | Mode | Action |
|-----|------|--------|
| `<Leader>cc` | n/v | Open chat |
| `<Leader>ca` | v | Add selection to chat |
| `ga` | v | Quick chat with selection |

## 🛠️ Configuration

### LSP Servers

Configure in `lua/core/settings.lua`:

```lua
settings["lsp_deps"] = {
  "bashls",
  "clangd",
  "gopls",
  "lua_ls",
  "pylsp",
  "rust_analyzer",
  -- Add more...
}
```

### Formatters & Linters

```lua
settings["null_ls_deps"] = {
  "prettier",
  "stylua",
  "black",
  "eslint_d",
  -- Add more...
}
```

### Disable Format on Save for Specific Directories

```lua
settings["format_disabled_dirs"] = {
  "~/projects/legacy",
  "~/vendor",
}
```

### Custom Colorscheme

```lua
settings["colorscheme"] = "catppuccin"
settings["background"] = "dark"  -- or "light"
settings["transparent_background"] = false
```

### AI Chat Configuration

Set up your API key:

```bash
export CODE_COMPANION_KEY="your-api-key"
```

Configure models in `lua/core/settings.lua`:

```lua
settings["chat_models"] = {
  "moonshotai/kimi-k2:free",
  "deepseek/deepseek-chat-v3-0324:free",
  "openai/gpt-4.1-mini",
  -- Add more models from https://openrouter.ai/models
}
```

## 🎯 Tips & Tricks

### Large Files

This config automatically optimizes for large files by disabling heavy features like Treesitter and LSP when files exceed certain size thresholds.

### Custom Dashboard Image

Generate ASCII art and add to `settings["dashboard_image"]`:

```bash
# Install: https://github.com/TheZoraiz/ascii-image-converter
ascii-image-converter your-image.png -C
```

### Project-specific Settings

Use `.neoconf.json` in your project root:

```json
{
  "lsp": {
    "lua_ls": {
      "settings": {
        "Lua": {
          "diagnostics": {
            "globals": ["vim"]
          }
        }
      }
    }
  }
}
```

## 🐛 Troubleshooting

### LSP Not Working

```vim
:checkhealth
:Mason
```

### Slow Startup

```vim
:Lazy profile
```

### Clear Cache

```bash
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## 📝 License

MIT License - see LICENSE file for details

## 🙏 Credits

Based on [nvimdots](https://github.com/ayamir/nvimdots) by ayamir.

---

<div align="center">

**[⬆ back to top](#-neovim-configuration)**

Made with ❤️ and Neovim

</div>
