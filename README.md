<div align="center">

# 🚀 Modern Neovim Configuration

<p align="center">
  <i>A powerful, blazingly fast, and beautifully crafted Neovim setup for modern development</i>
</p>

[![Neovim](https://img.shields.io/badge/Neovim-0.10+-57A143?style=for-the-badge&logo=neovim&logoColor=white)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Lua-5.1+-2C2D72?style=for-the-badge&logo=lua&logoColor=white)](https://www.lua.org/)
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)

[Features](#-features) • [Quick Start](#-quick-start) • [Installation](#-installation) • [Plugins](#-plugins) • [Keybindings](#-keybindings) • [Configuration](#-configuration) • [Languages](#-language-support)

</div>

---

## 📖 Overview

This is a feature-rich, highly customizable Neovim configuration designed for productivity, aesthetics, and performance. Built with Lua and lazy-loading in mind, it provides a modern IDE-like experience without sacrificing Vim's efficiency.

**Key Highlights:**
- 🎨 **Beautiful UI** - Catppuccin theme with transparency support, elegant statusline and bufferline
- 🧠 **Full LSP Support** - Auto-completion, diagnostics, code actions, and formatting
- 🤖 **AI Integration** - Built-in AI assistant with CodeCompanion and GitHub Copilot
- ⚡ **Blazing Fast** - Optimized startup time with lazy.nvim plugin manager
- 🐛 **Complete Debugging** - DAP support for C/C++, Go, Python, and Rust
- 🔍 **Advanced Search** - Powerful fuzzy finding with Telescope/FzfLua and ripgrep
- 🌳 **Git Integration** - Gitsigns, lazygit, diffview, and fugitive
- 📦 **90+ Plugins** - Carefully selected and configured for optimal workflow
- 🎯 **Smart Navigation** - Hop, Flash, and Treesitter text objects
- 💾 **Session Management** - Automatic session save and restore
- 🔧 **Highly Customizable** - User override system for easy personalization

---

## ✨ Features

### 🎨 **UI & Appearance**
- **Colorscheme**: Catppuccin with multiple variants (Mocha, Latte, Frappe, Macchiato)
- **Statusline**: Beautiful Lualine with git info, LSP status, and diagnostics
- **Bufferline**: Stylish buffer tabs with close buttons
- **Dashboard**: Custom Alpha dashboard with ASCII art
- **Transparency**: Optional transparent background support
- **Icons**: Full Nerd Font icon support
- **Notifications**: Elegant nvim-notify for system messages
- **Indent Guides**: Visual indent lines for better code structure
- **Git Signs**: Line-by-line git change indicators

### 🧠 **LSP & Completion**
- **LSP Servers**: Support for 15+ languages via Mason
- **Auto-completion**: Powered by nvim-cmp with multiple sources
- **Snippets**: LuaSnip with friendly-snippets collection
- **Signature Help**: Function signature hints while typing
- **Diagnostics**: Inline diagnostics with virtual text/lines
- **Code Actions**: Quick fixes and refactoring suggestions
- **Formatting**: Auto-format on save with none-ls
- **Inlay Hints**: Optional type hints (configurable)
- **Symbol Outline**: Dropbar for code context

### 🤖 **AI Integration**
- **CodeCompanion**: Multi-model AI chat assistant with inline chat support
- **Copilot Chat**: Enhanced GitHub Copilot with chat interface
- **Supported Providers**: OpenRouter, OpenAI, Anthropic, DeepSeek, and more
- **Free Models**: Kimi-K2, Qwen3-Coder, DeepSeek-R1, Gemma2-Coder
- **Premium Models**: GPT-4.1, Claude Sonnet 4, Gemini 2.5 Flash
- **Visual Selection**: Send code snippets to AI for explanation or improvement
- **Inline Suggestions**: GitHub Copilot integration with automatic completion
- **Better Escape**: Enhanced ESC key handling for optimal workflow

### 🔍 **Search & Navigation**
- **Fuzzy Finder**: Telescope or FzfLua (switchable)
- **File Search**: Quick file finding with previews
- **Live Grep**: Ripgrep-powered text search
- **Git Search**: Search commits, branches, and status
- **Symbol Search**: Navigate by functions, classes, variables
- **Quick Jump**: Hop and Flash for rapid cursor movement
- **Treesitter**: Smart syntax-aware navigation

### 🐛 **Debugging (DAP)**
- **Languages**: C/C++, Go, Python, Rust
- **Breakpoints**: Conditional and log breakpoints
- **REPL**: Interactive debugging console
- **UI**: Beautiful DAP-UI with scopes, watches, and call stack
- **Adapters**: CodeLLDB, Delve, debugpy pre-configured

### 🌳 **Git Integration**
- **Gitsigns**: Inline git blame and hunk preview
- **Lazygit**: Full-featured git UI
- **Diffview**: Side-by-side diff viewer
- **Fugitive**: Git commands in Neovim
- **Conflict Resolution**: Merge conflict helpers

### 🔧 **Editor Enhancements**
- **Treesitter**: Advanced syntax highlighting (70+ languages)
- **Auto-close**: Smart bracket/quote closing
- **Auto-tags**: Auto-close HTML/JSX tags
- **Comment**: Smart language-aware commenting with context support
- **Align**: Text alignment helpers (mini.align)
- **Match-up**: Enhanced % matching for brackets and keywords
- **Rainbow Delimiters**: Colored bracket pairs for better readability
- **Search & Replace**: Grug-far for project-wide replacements
- **Session Management**: Auto-save and restore sessions with persisted.nvim
- **Large File Optimization**: Auto-disable heavy features for files > 1MB
- **Highlight Colors**: Inline color preview for hex/rgb values
- **Cursor Word**: Highlight current word occurrences

### 🖥️ **Terminal & Tools**
- **Toggleterm**: Integrated terminal with float/split modes
- **Lazygit Integration**: Toggle with `<leader>gg`
- **REPL Support**: Run code snippets with SnipRun
- **Which-key**: Popup keybinding hints
- **Trouble**: Beautiful diagnostics list
- **Todo Comments**: Highlight TODO, FIXME, NOTE, etc.

---

## 🚀 Quick Start

### Prerequisites

Ensure you have the following installed:

| Tool | Version | Required | Purpose |
|------|---------|----------|---------|
| **Neovim** | >= 0.10.0 | ✅ Yes | Editor |
| **Git** | >= 2.23.0 | ✅ Yes | Version control and plugin management |
| **Nerd Font** | Any | ✅ Yes | Icons (recommended: [JetBrainsMono Nerd Font](https://www.nerdfonts.com/)) |
| **Node.js** | >= 18.x | ⚠️ Recommended | LSP servers (ts_ls, etc.) |
| **Ripgrep** | Latest | ⚠️ Recommended | Fast text search (telescope/fzf-lua) |
| **fd** | Latest | ⚠️ Recommended | Fast file finding |
| **lazygit** | Latest | ⬜ Optional | Git UI |
| **fzf** | Latest | ⬜ Optional | Alternative fuzzy finder backend |

### One-Line Install

```bash
# Backup existing config and install
mv ~/.config/nvim{,.bak.$(date +%Y%m%d%H%M%S)} 2>/dev/null; \
git clone https://github.com/channinghsu/nvim.git ~/.config/nvim && \
nvim
```

### What Happens on First Launch?

1. ⏳ Lazy.nvim automatically installs itself
2. 📦 All plugins are downloaded and installed
3. 🔧 Mason installs LSP servers, formatters, and linters
4. 🌳 Treesitter parsers are compiled
5. 🐛 DAP adapters are configured
6. ✅ You're ready to code!

**First launch may take 2-5 minutes depending on your internet speed.**

---

## 📥 Installation

### Detailed Installation Steps

#### 1. Backup Existing Configuration

```bash
# Backup all Neovim data
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

#### 2. Clone the Repository

```bash
# SSH (recommended for contributors)
git clone git@github.com:channinghsu/nvim.git ~/.config/nvim

# HTTPS (alternative)
git clone https://github.com/channinghsu/nvim.git ~/.config/nvim
```

#### 3. Launch Neovim

```bash
nvim
```

#### 4. Post-Install Checks

After installation completes, run health checks:

```vim
:checkhealth
:Mason
:Lazy
```

#### 5. (Optional) Install Additional Tools

```bash
# macOS
brew install ripgrep fd lazygit fzf

# Ubuntu/Debian
sudo apt install ripgrep fd-find lazygit fzf

# Arch Linux
sudo pacman -S ripgrep fd lazygit fzf

# Fedora
sudo dnf install ripgrep fd-find lazygit fzf
```

---

## 🔌 Plugins

### 📊 Plugin Categories

This configuration includes **90+ plugins** organized into 5 categories:

<details>
<summary><b>💻 Completion & LSP (19 plugins)</b></summary>

| Plugin | Description | Stars |
|--------|-------------|-------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Quickstart configs for Nvim LSP | ![stars](https://img.shields.io/github/stars/neovim/nvim-lspconfig?style=social) |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Portable package manager | ![stars](https://img.shields.io/github/stars/williamboman/mason.nvim?style=social) |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge mason and lspconfig | ![stars](https://img.shields.io/github/stars/williamboman/mason-lspconfig.nvim?style=social) |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine | ![stars](https://img.shields.io/github/stars/hrsh7th/nvim-cmp?style=social) |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP completion source | ![stars](https://img.shields.io/github/stars/hrsh7th/cmp-nvim-lsp?style=social) |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Buffer completion source | ![stars](https://img.shields.io/github/stars/hrsh7th/cmp-buffer?style=social) |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Path completion source | ![stars](https://img.shields.io/github/stars/hrsh7th/cmp-path?style=social) |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Luasnip completion source | ![stars](https://img.shields.io/github/stars/saadparwaiz1/cmp_luasnip?style=social) |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine | ![stars](https://img.shields.io/github/stars/L3MON4D3/LuaSnip?style=social) |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection | ![stars](https://img.shields.io/github/stars/rafamadriz/friendly-snippets?style=social) |
| [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | Enhanced LSP UI | ![stars](https://img.shields.io/github/stars/nvimdev/lspsaga.nvim?style=social) |
| [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) | Function signature help | ![stars](https://img.shields.io/github/stars/ray-x/lsp_signature.nvim?style=social) |
| [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) | Formatting & diagnostics | ![stars](https://img.shields.io/github/stars/nvimtools/none-ls.nvim?style=social) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot | ![stars](https://img.shields.io/github/stars/zbirenbaum/copilot.lua?style=social) |
| [copilot-cmp](https://github.com/zbirenbaum/copilot-cmp) | Copilot completion source | ![stars](https://img.shields.io/github/stars/zbirenbaum/copilot-cmp?style=social) |
| [neoconf.nvim](https://github.com/folke/neoconf.nvim) | Project-local LSP config | ![stars](https://img.shields.io/github/stars/folke/neoconf.nvim?style=social) |
| [glance.nvim](https://github.com/dnlhc/glance.nvim) | Pretty LSP references | ![stars](https://img.shields.io/github/stars/dnlhc/glance.nvim?style=social) |
| [tiny-inline-diagnostic.nvim](https://github.com/rachartier/tiny-inline-diagnostic.nvim) | Inline diagnostics | ![stars](https://img.shields.io/github/stars/rachartier/tiny-inline-diagnostic.nvim?style=social) |

</details>

<details>
<summary><b>✏️ Editor Enhancement (25 plugins)</b></summary>

| Plugin | Description | Stars |
|--------|-------------|-------|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting | ![stars](https://img.shields.io/github/stars/nvim-treesitter/nvim-treesitter?style=social) |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Syntax-aware text objects | ![stars](https://img.shields.io/github/stars/nvim-treesitter/nvim-treesitter-textobjects?style=social) |
| [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) | Context-aware commenting | ![stars](https://img.shields.io/github/stars/JoosepAlviste/nvim-ts-context-commentstring?style=social) |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | Show code context | ![stars](https://img.shields.io/github/stars/nvim-treesitter/nvim-treesitter-context?style=social) |
| [flash.nvim](https://github.com/folke/flash.nvim) | Enhanced navigation | ![stars](https://img.shields.io/github/stars/folke/flash.nvim?style=social) |
| [hop.nvim](https://github.com/smoka7/hop.nvim) | EasyMotion-like jumping | ![stars](https://img.shields.io/github/stars/smoka7/hop.nvim?style=social) |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Smart commenting | ![stars](https://img.shields.io/github/stars/numToStr/Comment.nvim?style=social) |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | Search & replace UI | ![stars](https://img.shields.io/github/stars/MagicDuck/grug-far.nvim?style=social) |
| [mini.align](https://github.com/echasnovski/mini.align) | Text alignment | ![stars](https://img.shields.io/github/stars/echasnovski/mini.align?style=social) |
| [autoclose.nvim](https://github.com/m4xshen/autoclose.nvim) | Auto-close pairs | ![stars](https://img.shields.io/github/stars/m4xshen/autoclose.nvim?style=social) |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto-close HTML tags | ![stars](https://img.shields.io/github/stars/windwp/nvim-ts-autotag?style=social) |
| [vim-matchup](https://github.com/andymass/vim-matchup) | Enhanced % matching | ![stars](https://img.shields.io/github/stars/andymass/vim-matchup?style=social) |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | Rainbow parentheses | ![stars](https://img.shields.io/github/stars/HiPhish/rainbow-delimiters.nvim?style=social) |
| [persisted.nvim](https://github.com/olimorris/persisted.nvim) | Session management | ![stars](https://img.shields.io/github/stars/olimorris/persisted.nvim?style=social) |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Git diff viewer | ![stars](https://img.shields.io/github/stars/sindrets/diffview.nvim?style=social) |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | Highlight word under cursor | ![stars](https://img.shields.io/github/stars/RRethy/vim-illuminate?style=social) |
| [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors) | Color highlighter | ![stars](https://img.shields.io/github/stars/brenoprata10/nvim-highlight-colors?style=social) |
| [suda.vim](https://github.com/lambdalisue/suda.vim) | Write with sudo | ![stars](https://img.shields.io/github/stars/lambdalisue/suda.vim?style=social) |
| [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace) | Highlight trailing whitespace | ![stars](https://img.shields.io/github/stars/ntpeters/vim-better-whitespace?style=social) |

</details>

<details>
<summary><b>🔧 Tools (20 plugins)</b></summary>

| Plugin | Description | Stars |
|--------|-------------|-------|
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder | ![stars](https://img.shields.io/github/stars/nvim-telescope/telescope.nvim?style=social) |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fast fuzzy finder | ![stars](https://img.shields.io/github/stars/ibhagwan/fzf-lua?style=social) |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer | ![stars](https://img.shields.io/github/stars/nvim-tree/nvim-tree.lua?style=social) |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal management | ![stars](https://img.shields.io/github/stars/akinsho/toggleterm.nvim?style=social) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints | ![stars](https://img.shields.io/github/stars/folke/which-key.nvim?style=social) |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics list | ![stars](https://img.shields.io/github/stars/folke/trouble.nvim?style=social) |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug adapter | ![stars](https://img.shields.io/github/stars/mfussenegger/nvim-dap?style=social) |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | DAP UI | ![stars](https://img.shields.io/github/stars/rcarriga/nvim-dap-ui?style=social) |
| [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) | AI chat assistant | ![stars](https://img.shields.io/github/stars/olimorris/codecompanion.nvim?style=social) |
| [dropbar.nvim](https://github.com/Bekaboo/dropbar.nvim) | Winbar breadcrumbs | ![stars](https://img.shields.io/github/stars/Bekaboo/dropbar.nvim?style=social) |
| [project.nvim](https://github.com/ahmedkhalf/project.nvim) | Project management | ![stars](https://img.shields.io/github/stars/ahmedkhalf/project.nvim?style=social) |
| [sniprun](https://github.com/michaelb/sniprun) | Code runner | ![stars](https://img.shields.io/github/stars/michaelb/sniprun?style=social) |
| [smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim) | Smart window resizing | ![stars](https://img.shields.io/github/stars/mrjones2014/smart-splits.nvim?style=social) |
| [wilder.nvim](https://github.com/gelguy/wilder.nvim) | Command-line completion | ![stars](https://img.shields.io/github/stars/gelguy/wilder.nvim?style=social) |

</details>

<details>
<summary><b>🎨 UI & Appearance (16 plugins)</b></summary>

| Plugin | Description | Stars |
|--------|-------------|-------|
| [catppuccin](https://github.com/catppuccin/nvim) | Soothing pastel theme | ![stars](https://img.shields.io/github/stars/catppuccin/nvim?style=social) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline | ![stars](https://img.shields.io/github/stars/nvim-lualine/lualine.nvim?style=social) |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs | ![stars](https://img.shields.io/github/stars/akinsho/bufferline.nvim?style=social) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard | ![stars](https://img.shields.io/github/stars/goolord/alpha-nvim?style=social) |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations | ![stars](https://img.shields.io/github/stars/lewis6991/gitsigns.nvim?style=social) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides | ![stars](https://img.shields.io/github/stars/lukas-reineke/indent-blankline.nvim?style=social) |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | Notification manager | ![stars](https://img.shields.io/github/stars/rcarriga/nvim-notify?style=social) |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODOs | ![stars](https://img.shields.io/github/stars/folke/todo-comments.nvim?style=social) |
| [edgy.nvim](https://github.com/folke/edgy.nvim) | Window layout manager | ![stars](https://img.shields.io/github/stars/folke/edgy.nvim?style=social) |
| [nvim-scrollview](https://github.com/dstein64/nvim-scrollview) | Scrollbar | ![stars](https://img.shields.io/github/stars/dstein64/nvim-scrollview?style=social) |
| [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) | Smooth scrolling | ![stars](https://img.shields.io/github/stars/karb94/neoscroll.nvim?style=social) |
| [paint.nvim](https://github.com/folke/paint.nvim) | Highlight patterns | ![stars](https://img.shields.io/github/stars/folke/paint.nvim?style=social) |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons | ![stars](https://img.shields.io/github/stars/nvim-tree/nvim-web-devicons?style=social) |

</details>

<details>
<summary><b>🌐 Language-Specific (10 plugins)</b></summary>

| Plugin | Description | Stars |
|--------|-------------|-------|
| [go.nvim](https://github.com/ray-x/go.nvim) | Golang toolkit | ![stars](https://img.shields.io/github/stars/ray-x/go.nvim?style=social) |
| [rustaceanvim](https://github.com/mrcjkb/rustaceanvim) | Rust tools | ![stars](https://img.shields.io/github/stars/mrcjkb/rustaceanvim?style=social) |
| [crates.nvim](https://github.com/saecki/crates.nvim) | Cargo.toml helper | ![stars](https://img.shields.io/github/stars/saecki/crates.nvim?style=social) |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown rendering | ![stars](https://img.shields.io/github/stars/MeanderingProgrammer/render-markdown.nvim?style=social) |
| [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf) | Better quickfix | ![stars](https://img.shields.io/github/stars/kevinhwang91/nvim-bqf?style=social) |

</details>

---

## ⌨️ Keybindings

> **Leader Key**: `<Space>`

### 📌 Core Keybindings

<details>
<summary><b>File Operations</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<C-s>` | n, i | Save file |
| `<C-q>` | n, i | Save and quit |
| `<A-S-q>` | n | Force quit |

</details>

<details>
<summary><b>Window & Buffer Management</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | n | Focus left split |
| `<C-j>` | n | Focus down split |
| `<C-k>` | n | Focus up split |
| `<C-l>` | n | Focus right split |
| `<C-Up>` | n | Resize split up |
| `<C-Down>` | n | Resize split down |
| `<C-Left>` | n | Resize split left |
| `<C-Right>` | n | Resize split right |

</details>

<details>
<summary><b>Editing</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<Esc>` | n | Clear search highlight |
| `Y` | n | Yank to end of line |
| `D` | n | Delete to end of line |
| `J` | v | Move line down |
| `K` | v | Move line up |
| `<` | v | Decrease indent |
| `>` | v | Increase indent |
| `gcc` | n | Toggle line comment |
| `gc` | v | Toggle comment on selection |
| `<S-Tab>` | n | Toggle fold |

</details>

### 🔍 Search & Navigation

<details>
<summary><b>Fuzzy Finding (Telescope/FzfLua)</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | n | Find files |
| `<leader>fp` | n | Find patterns (live grep) |
| `<leader>fs` | v | Find selected text |
| `<leader>fg` | n | Find Git objects |
| `<leader>fd` | n | Find dossiers |
| `<leader>fm` | n | Miscellaneous searches |
| `<leader>fr` | n | Resume last search |
| `<leader>fc` | n | Telescope collections |
| `<C-p>` | n | Command panel |

</details>

<details>
<summary><b>Quick Jump (Hop)</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<leader>w` | n, v | Jump to word |
| `<leader>j` | n, v | Jump to line |
| `<leader>k` | n, v | Jump to line |
| `<leader>c` | n, v | Jump to char |
| `<leader>C` | n, v | Jump to two chars |

</details>

### 🧠 LSP & Completion

<details>
<summary><b>LSP Actions</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `gd` | n | Go to definition |
| `gD` | n | Go to declaration |
| `gr` | n | Find references |
| `gi` | n | Go to implementation |
| `gt` | n | Go to type definition |
| `K` | n | Hover documentation |
| `<leader>ca` | n | Code actions |
| `<leader>rn` | n | Rename symbol |
| `[d` | n | Previous diagnostic |
| `]d` | n | Next diagnostic |
| `<leader>ld` | n | Show document diagnostics |
| `<leader>lw` | n | Show workspace diagnostics |
| `<leader>lp` | n | Show project diagnostics |

</details>

<details>
<summary><b>Completion (Insert Mode)</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<Tab>` | i | Next completion item |
| `<S-Tab>` | i | Previous completion item |
| `<CR>` | i | Confirm completion |
| `<C-e>` | i | Close completion menu |
| `<C-d>` | i | Scroll docs down |
| `<C-u>` | i | Scroll docs up |

</details>

### 🐛 Debugging (DAP)

| Key | Mode | Action |
|-----|------|--------|
| `<F6>` | n | Continue / Start debugging |
| `<F7>` | n | Stop debugging |
| `<F8>` | n | Toggle breakpoint |
| `<F9>` | n | Step into |
| `<F10>` | n | Step out |
| `<F11>` | n | Step over |
| `<leader>db` | n | Conditional breakpoint |
| `<leader>dc` | n | Run to cursor |
| `<leader>dl` | n | Run last |
| `<leader>do` | n | Open REPL |

### 🌳 Git

| Key | Mode | Action |
|-----|------|--------|
| `<leader>gg` | n | Toggle lazygit |
| `<leader>gd` | n | Open diff view |
| `<leader>gD` | n | Close diff view |
| `<leader>gb` | n | Git blame line |
| `<leader>gG` | n | Open fugitive |
| `gps` | n | Git push |
| `gpl` | n | Git pull |
| `]g` | n | Next git hunk |
| `[g` | n | Previous git hunk |

### 🖥️ Terminal

| Key | Mode | Action |
|-----|------|--------|
| `<C-\>` | n, i, t | Toggle horizontal terminal |
| `<A-\>` | n, i, t | Toggle vertical terminal |
| `<A-d>` | n, i, t | Toggle floating terminal |
| `<F5>` | n, i, t | Toggle vertical terminal |
| `<Esc><Esc>` | t | Exit terminal mode |

### 🤖 AI Assistant (CodeCompanion)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cc` | n, v | Toggle AI chat |
| `<leader>ck` | n, v | CodeCompanion actions |
| `<leader>ca` | v | Add selection to chat |
| `<leader>cs` | n | Select AI model |

### 🔧 Tools & Utilities

<details>
<summary><b>File Explorer</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<C-n>` | n | Toggle file tree |
| `<leader>nf` | n | Find current file in tree |
| `<leader>nr` | n | Refresh tree |

</details>

<details>
<summary><b>Session Management</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ss` | n | Save session |
| `<leader>sl` | n | Load session |
| `<leader>sd` | n | Delete session |

</details>

<details>
<summary><b>Search & Replace</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<leader>Ss` | n | Open search & replace panel |
| `<leader>Sp` | n, v | Search current word in project |
| `<leader>Sf` | n | Search current word in file |

</details>

<details>
<summary><b>Package Manager</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ph` | n | Show Lazy |
| `<leader>ps` | n | Sync plugins |
| `<leader>pu` | n | Update plugins |
| `<leader>pi` | n | Install plugins |
| `<leader>pp` | n | Profile startup time |
| `<leader>pc` | n | Check for updates |
| `<leader>px` | n | Clean unused plugins |

</details>

<details>
<summary><b>Misc</b></summary>

| Key | Mode | Action |
|-----|------|--------|
| `<leader>r` | n, v | Run code (SnipRun) |
| `<A-s>` | n | Save with sudo |
| `<leader>o` | n | Toggle spell check |

</details>

---

## 🌐 Language Support

### 📊 Supported Languages

This configuration provides first-class support for the following languages:

| Language | LSP Server | DAP | Formatter | Treesitter | Extras |
|----------|-----------|-----|-----------|------------|--------|
| **Lua** | lua_ls | - | stylua | ✅ | Neodev for Neovim API |
| **Go** | gopls | delve | goimports, gofumpt | ✅ | go.nvim toolkit |
| **Rust** | rust-analyzer | codelldb | rustfmt | ✅ | rustaceanvim, crates.nvim |
| **Python** | pylsp | debugpy | black, autopep8 | ✅ | - |
| **C/C++** | clangd | codelldb/lldb | clang-format | ✅ | - |
| **JavaScript/TS** | ts_ls, vtsls | - | prettier | ✅ | Vue.js support |
| **HTML** | html | - | prettier | ✅ | Auto-close tags |
| **CSS** | cssls | - | prettier | ✅ | Color highlighting |
| **JSON** | jsonls | - | prettier | ✅ | - |
| **YAML** | yamlls | - | prettier | ✅ | - |
| **Bash** | bashls | - | shfmt | ✅ | - |
| **Markdown** | - | - | prettier | ✅ | render-markdown |
| **Dart** | dartls | - | dart format | ✅ | Flutter support |
| **Vue** | volar | - | prettier | ✅ | - |
| **LaTeX** | texlab | - | latexindent | ✅ | - |

### 🔧 Adding New Languages

#### 1. Install LSP Server

Create or edit `lua/user/settings.lua` to override default settings:

```lua
local settings = {}

settings["lsp_deps"] = {
  "bashls",
  "clangd",
  "lua_ls",
  -- Add your LSP server here
  "new_language_ls",
}

return settings
```

#### 2. Install Formatter (Optional)

```lua
settings["null_ls_deps"] = {
  "prettier",
  "stylua",
  -- Add formatter here
  "your_formatter",
}
```

#### 3. Install Treesitter Parser

```lua
settings["treesitter_deps"] = {
  "lua",
  "go",
  -- Add parser here
  "new_language",
}
```

#### 4. Add DAP Configuration (Optional)

Create a file in `lua/modules/configs/tool/dap/clients/` or `lua/user/configs/tool/dap/clients/`:

```lua
-- lua/user/configs/tool/dap/clients/your_language.lua
local dap = require("dap")

dap.adapters.your_language = {
  type = "executable",
  command = "path-to-debugger",
  args = { "--arg1", "--arg2" },
}

dap.configurations.your_language = {
  {
    type = "your_language",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}
```

Then require it in your user event file or DAP init.

---

## ⚙️ Configuration

### 📂 User Directory Structure

All user customizations go in `~/.config/nvim/lua/user/`:

```
lua/user/
├── configs/               # Override plugin configurations
│   ├── completion/        # LSP, completion configs
│   │   └── copilot-chat.lua
│   ├── editor/            # Editor plugin configs
│   │   └── (removed) better-escape.lua
│   ├── tool/              # Tool plugin configs (DAP, telescope, etc.)
│   └── ui/                # UI plugin configs
├── keymap/                # Custom keybindings (loaded automatically)
│   ├── init.lua           # Main keymap file (loads all others)
│   ├── ai.lua             # AI-related keybindings
│   ├── completion.lua     # Completion keybindings
│   ├── core.lua           # Core editor keybindings
│   ├── editor.lua         # Editor enhancement keybindings
│   └── tool.lua           # Tool keybindings
├── plugins/               # Additional plugins (loaded automatically)
│   ├── completion.lua     # Completion-related plugins
│   ├── editor.lua         # Editor enhancement plugins
│   └── ui.lua             # UI-related plugins
├── event.lua              # Custom autocommands
├── options.lua            # Custom vim options
├── settings.lua           # Override core settings (most important)
└── dashboard.lua          # Custom dashboard ASCII art
```

### 🎨 Core Settings

Create or edit `lua/user/settings.lua`:

```lua
local settings = {}

-- Git & Installation
settings["use_ssh"] = true                    -- Use SSH for git operations

-- Copilot & AI
settings["use_copilot"] = true                -- Enable GitHub Copilot
settings["copilot_chat"] = true               -- Enable Copilot Chat

-- Formatting
settings["format_on_save"] = true             -- Auto-format on save
settings["format_timeout"] = 1000             -- Format timeout (ms)
settings["format_notify"] = true              -- Show format notifications
settings["format_modifications_only"] = false -- Format only changed lines

-- Formatter blocklist (skip formatting for these filetypes)
settings["formatter_block_list"] = {
  lua = false,  -- Set to true to disable formatting
}

-- Server formatting blocklist (disable formatting from these LSP servers)
settings["server_formatting_block_list"] = {
  clangd = true,
  lua_ls = true,
  ts_ls = true,
}

-- Directories where formatting is disabled
settings["format_disabled_dirs"] = {
  "~/projects/legacy",
}

-- Diagnostics
settings["diagnostics_virtual_lines"] = true  -- Show diagnostics as virtual lines
settings["diagnostics_level"] = "HINT"        -- Minimum level: ERROR, WARN, INFO, HINT

-- Performance
settings["load_big_files_faster"] = true      -- Optimize for large files

-- Theme
settings["colorscheme"] = "catppuccin"        -- catppuccin, catppuccin-latte, etc.
settings["transparent_background"] = false    -- Transparent background
settings["background"] = "dark"               -- "dark" or "light"

-- Search Backend
settings["search_backend"] = "telescope"      -- "telescope" or "fzf"

-- LSP
settings["lsp_inlayhints"] = false            -- Show inlay type hints

-- LSP Servers to Install
settings["lsp_deps"] = {
  "bashls",
  "clangd",
  "html",
  "jsonls",
  "lua_ls",
  "pylsp",
  "gopls",
}

-- Formatters & Linters
settings["null_ls_deps"] = {
  "clang_format",
  "gofumpt",
  "goimports",
  "prettier",
  "shfmt",
  "stylua",
}

-- DAP Adapters
settings["dap_deps"] = {
  "codelldb",  -- C/C++/Rust
  "delve",     -- Go
  "python",    -- Python
}

-- Treesitter Parsers
settings["treesitter_deps"] = {
  "bash", "c", "cpp", "go", "lua",
  "python", "rust", "javascript", "typescript",
  -- Add more as needed
}

-- GUI Settings (for neovide/neovim-qt)
settings["gui_config"] = {
  font_name = "JetBrainsMono Nerd Font",
  font_size = 12,
}

-- Dashboard ASCII Art
settings["dashboard_image"] = {
  [[Your ASCII art here]],
  [[Line 2]],
}

-- AI Chat (CodeCompanion)
settings["use_chat"] = true                   -- Enable AI chat with CodeCompanion
settings["chat_lang"] = "English"             -- Response language (or "Chinese")
settings["chat_api_key"] = "CODE_COMPANION_KEY" -- Environment variable name
settings["chat_models"] = {
  -- Free models (great for general tasks)
  "moonshotai/kimi-k2:free",
  "qwen/qwen3-coder:free",
  "deepseek/deepseek-r1:free",
  "google/gemma-2-9b-it:free",
  -- Paid models (better quality)
  "openai/gpt-4.1-mini",
  "anthropic/claude-sonnet-4",
  "google/gemini-2.5-flash-latest",
}

return settings
```

### 🎨 Customizing Colorscheme

**Change variant:**

```lua
settings["colorscheme"] = "catppuccin-mocha"  -- mocha, latte, frappe, macchiato
```

**Enable transparency:**

```lua
settings["transparent_background"] = true
```

**Override colors:**

```lua
settings["palette_overwrite"] = {
  sky = "#04A5E5",
  red = "#F38BA8",
}
```

### 🔑 Adding Custom Keybindings

User keymaps are automatically loaded from `lua/user/keymap/`. You can create separate files for different categories:

**Example: `lua/user/keymap/core.lua`**
```lua
local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

-- Define your custom keybindings
return {
  ["n|<leader>xx"] = map_cr("YourCommand")
    :with_noremap()
    :with_silent()
    :with_desc("Your custom command"),
    
  ["n|<leader>yy"] = map_callback(function()
      vim.notify("Hello from custom keymap!", vim.log.levels.INFO)
    end)
    :with_noremap()
    :with_desc("Say hello"),
    
  -- Visual mode mapping
  ["v|<leader>vv"] = map_cmd("<Cmd>YourVisualCommand<CR>")
    :with_noremap()
    :with_desc("Visual command"),
}
```

Keymaps are loaded automatically when you restart Neovim. No need to call `nvim_load_mapping` manually.

### 📦 Adding Custom Plugins

User plugins are automatically loaded from `lua/user/plugins/`. Organize by category:

**Example: `lua/user/plugins/editor.lua`**
```lua
return {
  {
    "your-username/your-plugin",
    lazy = true,
    event = "VeryLazy",  -- or other lazy-loading events
    dependencies = {
      "some-dependency/plugin",
    },
    config = function()
      require("your-plugin").setup({
        -- Plugin configuration
        option1 = true,
        option2 = "value",
      })
    end,
  },
  
  -- Add more plugins...
  {
    "another/plugin",
    cmd = "PluginCommand",  -- Load when command is executed
    keys = {
      { "<leader>p", "<cmd>PluginCommand<cr>", desc = "Plugin command" },
    },
  },
}
```

Plugins are automatically detected and loaded by lazy.nvim on startup.

### 🎯 Project-Specific Settings

Create `.neoconf.json` in your project root:

```json
{
  "lsp": {
    "lua_ls": {
      "settings": {
        "Lua": {
          "diagnostics": {
            "globals": ["vim", "describe", "it"]
          },
          "workspace": {
            "library": {
              "/path/to/library": true
            }
          }
        }
      }
    }
  }
}
```

### 🤖 AI Chat Configuration

#### 1. Get API Key

Register at [OpenRouter](https://openrouter.ai/) and generate an API key.

#### 2. Set Environment Variable

```bash
# Add to ~/.bashrc or ~/.zshrc
export CODE_COMPANION_KEY="sk-or-v1-..."

# Or use a password manager
export CODE_COMPANION_KEY=$(op read "op://personal/OpenRouter/credential")
```

#### 3. Configure Models

Edit `lua/user/settings.lua`:

```lua
settings["chat_models"] = {
  "moonshotai/kimi-k2:free",           -- Free, great for general tasks
  "deepseek/deepseek-r1:free",         -- Free, reasoning model
  "openai/gpt-4.1-mini",               -- Paid, fast and accurate
  "anthropic/claude-sonnet-4",         -- Paid, excellent for code
}
```

#### 4. Usage

**CodeCompanion:**
- `<leader>cc` - Toggle inline chat
- `<leader>ca` - Add visual selection to chat
- Type your question or request in the chat buffer

**Copilot Chat (if enabled):**
- `<leader>cce` - Explain code
- `<leader>cct` - Generate tests
- `<leader>ccf` - Fix code
- `<leader>cco` - Optimize code
- `<leader>ccd` - Generate docs

**Switch Models:**
Check `lua/modules/configs/tool/codecompanion.lua` to configure available models.

---

## 💡 Tips & Tricks

### ⚡ Performance Optimization

**Check startup time:**
```vim
:Lazy profile
```

**Large file optimization:**
- Automatically disables Treesitter, LSP, and other heavy features for files > 1MB
- Configured in `lua/core/event.lua` (look for `LargeFile` event)

**Disable specific plugins:**
You can disable plugins by adding `enabled = false` in user plugin overrides:

```lua
-- lua/user/plugins/editor.lua
return {
  {
    "echasnovski/mini.align",
    enabled = false,  -- Disable this plugin
  },
}
```

**Optimize Treesitter:**
```lua
-- In lua/user/settings.lua, reduce parsers you don't need
settings["treesitter_deps"] = {
  "lua", "vim", "vimdoc",  -- Only essential parsers
}
```

### 🎨 Custom Dashboard

Generate ASCII art:

```bash
# Install ascii-image-converter
brew install TheZoraiz/ascii-image-converter/ascii-image-converter

# Generate ASCII art
ascii-image-converter your-image.png -C -W 60 -H 20
```

Add to `lua/user/dashboard.lua`:

```lua
return {
  [[  ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ]],
  [[   ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
  [[         ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]],
  [[          ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
}
```

### 🔧 Useful Commands

```vim
" Health checks
:checkhealth
:checkhealth nvim-treesitter
:checkhealth telescope

" Package management
:Lazy
:Mason
:MasonUpdate

" LSP info
:LspInfo
:LspLog
:LspRestart

" Treesitter
:TSInstall <language>
:TSUpdate
:TSModuleInfo

" DAP
:DapInstall
:DapUninstall

" Git
:Git status
:Telescope git_files
:DiffviewOpen

" Sessions
:SessionSave
:SessionLoad
:SessionDelete
```

### 🎯 Workflow Examples

**Quick file navigation:**
1. `<leader>ff` - Find files
2. Type partial filename
3. `<CR>` to open

**Code review workflow:**
1. `<leader>gd` - Open diff view
2. Review changes
3. `<leader>gD` - Close diff view

**AI-assisted coding:**
1. Select code in visual mode
2. `<leader>ca` - Add to AI chat
3. Ask question or request improvement
4. `<leader>cs` - Switch model if needed

**Debugging session:**
1. `<F8>` - Set breakpoints
2. `<F6>` - Start debugging
3. `<F9>/<F10>/<F11>` - Step through code
4. `<leader>do` - Open REPL for inspection

---

## 🐛 Troubleshooting

### Common Issues

<details>
<summary><b>LSP not working / No completions</b></summary>

**Check LSP status:**
```vim
:LspInfo
:checkhealth nvim-lspconfig
```

**Reinstall LSP server:**
```vim
:Mason
" Find your server, press 'X' to uninstall, then 'i' to reinstall
```

**Check if server is installed:**
```bash
which lua-language-server
which gopls
```

</details>

<details>
<summary><b>Slow startup time</b></summary>

**Profile startup:**
```vim
:Lazy profile
```

**Disable unnecessary plugins:**
```lua
-- In lua/user/settings.lua
settings["disabled_plugins"] = {
  "plugin-author/plugin-name",
}
```

**Check for errors:**
```vim
:messages
```

</details>

<details>
<summary><b>Treesitter highlighting broken</b></summary>

**Reinstall parser:**
```vim
:TSInstall! <language>
:TSUpdate
```

**Check Treesitter health:**
```vim
:checkhealth nvim-treesitter
```

</details>

<details>
<summary><b>Telescope/FzfLua not finding files</b></summary>

**Check if ripgrep is installed:**
```bash
which rg
```

**Install ripgrep:**
```bash
brew install ripgrep        # macOS
sudo apt install ripgrep    # Ubuntu
```

**Check ignored files:**
```vim
" Make sure .gitignore isn't hiding your files
:Telescope find_files hidden=true
```

</details>

<details>
<summary><b>Copilot not working</b></summary>

**Authenticate:**
```vim
:Copilot auth
```

**Check status:**
```vim
:Copilot status
```

**Disable if not needed:**
```lua
settings["use_copilot"] = false
```

</details>

<details>
<summary><b>AI Chat not responding</b></summary>

**Check API key:**
```bash
echo $CODE_COMPANION_KEY
```

**Set API key:**
```bash
export CODE_COMPANION_KEY="your-key-here"
```

**Check model availability:**
- Visit [OpenRouter Models](https://openrouter.ai/models)
- Ensure selected model is available

**Check logs:**
```vim
:messages
```

</details>

<details>
<summary><b>Formatting not working</b></summary>

**Check if formatter is installed:**
```vim
:Mason
```

**Check format settings:**
```lua
settings["format_on_save"] = true
```

**Manual format:**
```vim
:Format
```

**Check if filetype is blocked:**
```lua
settings["formatter_block_list"] = {
  lua = false,  -- Should be false to enable
}
```

</details>

### 🔄 Reset Configuration

If all else fails:

```bash
# Backup current config
mv ~/.config/nvim ~/.config/nvim.broken

# Clear all data
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Re-clone and start fresh
git clone https://github.com/channinghsu/nvim.git ~/.config/nvim
nvim
```

---

## ❓ FAQ

<details>
<summary><b>How do I update plugins?</b></summary>

```vim
:Lazy sync
```

Or press `<leader>ps` in normal mode.

</details>

<details>
<summary><b>How do I add a new LSP server?</b></summary>

1. Add to `settings["lsp_deps"]` in `lua/user/settings.lua`
2. Restart Neovim
3. Mason will auto-install it

</details>

<details>
<summary><b>Can I use this with VSCode Neovim?</b></summary>

Not recommended. This config is designed for standalone Neovim. However, the `init.lua` checks for VSCode and skips most configuration.

</details>

<details>
<summary><b>How do I change the color scheme?</b></summary>

```lua
-- In lua/user/settings.lua
settings["colorscheme"] = "catppuccin-mocha"  -- or -latte, -frappe, -macchiato
```

</details>

<details>
<summary><b>How do I disable format on save?</b></summary>

```lua
settings["format_on_save"] = false
```

</details>

<details>
<summary><b>How do I use a different search backend?</b></summary>

```lua
settings["search_backend"] = "fzf"  -- or "telescope"
```

Requires `fzf` binary: `brew install fzf`

</details>

<details>
<summary><b>How do I disable GitHub Copilot?</b></summary>

```lua
settings["use_copilot"] = false
```

</details>

<details>
<summary><b>How do I disable AI chat?</b></summary>

```lua
settings["use_chat"] = false
```

</details>

<details>
<summary><b>Can I use this config on Windows?</b></summary>

Yes, but some features may need adjustments:
- Use Windows paths in settings
- Some tools may need Windows equivalents
- Git Bash or WSL recommended

</details>

<details>
<summary><b>How do I keep my custom settings when updating?</b></summary>

All your customizations should go in the `lua/user/` directory, which is gitignored by default. When you pull updates:

```bash
cd ~/.config/nvim
git pull
```

Your user configurations will not be overwritten.

</details>

<details>
<summary><b>How do I contribute?</b></summary>

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Test thoroughly
5. Commit with clear messages
6. Push to your fork
7. Open a Pull Request

</details>

---

## 🤝 Contributing

Contributions are welcome! Whether it's:

- 🐛 Bug reports
- 💡 Feature suggestions
- 📝 Documentation improvements
- 🔧 Code contributions

Please open an issue or pull request on [GitHub](https://github.com/channinghsu/nvim).

---

## 📝 License

MIT License - see [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

This configuration is built on the shoulders of giants:

- **[nvimdots](https://github.com/ayamir/nvimdots)** by [@ayamir](https://github.com/ayamir) - Original inspiration and base structure
- **[lazy.nvim](https://github.com/folke/lazy.nvim)** by [@folke](https://github.com/folke) - Plugin manager
- **[catppuccin](https://github.com/catppuccin/nvim)** - Beautiful theme
- All the amazing plugin authors in the Neovim ecosystem

Special thanks to the Neovim core team and community for creating such an incredible editor!

---

## 📊 Stats

- **Total Plugins**: 90+
- **Supported Languages**: 15+
- **Lines of Config**: ~8000+
- **Startup Time**: < 30ms (with lazy loading)
- **Treesitter Parsers**: 70+ available
- **LSP Servers**: 20+ pre-configured

---

## 🗺️ Roadmap

- [ ] Add more AI model integrations
- [ ] Improve DAP configurations for more languages
- [ ] Add testing framework integration
- [ ] Create video tutorials
- [ ] Add docker development environment support
- [ ] Improve documentation with more examples

---

<div align="center">

**[⬆ Back to Top](#-modern-neovim-configuration)**

---

Made with ❤️ by [Channing Hsu](https://github.com/channinghsu)

If you find this helpful, consider giving it a ⭐!

**Happy Vimming! 🚀**

</div>
