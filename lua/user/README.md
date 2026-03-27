# User Configuration Directory

Welcome to the `lua/user/` folder! This directory contains all your **personal customizations** and **overrides** for the Neovim configuration. Files here are **never overwritten** when you update the main configuration.

## 📁 Directory Structure

```
lua/user/
├── README.md                    # This file - start here!
├── KEYBINDINGS.md              # Custom keybindings documentation
├── CONFIG_GUIDE.md             # Configuration examples and best practices
│
├── settings.lua                # ⭐ MAIN CONFIG - Override global settings here
├── options.lua                 # Custom Neovim options
├── event.lua                   # Custom autocommands and events
├── dashboard.lua               # Custom dashboard ASCII art
│
├── configs/                    # Override plugin configurations
│   └── completion/
│       └── copilot-chat.lua   # Copilot Chat prompts and config
│
├── keymap/                     # Custom keybindings (automatically loaded)
│   ├── init.lua               # Loads all keymaps
│   ├── core.lua               # Core editor keybindings
│   ├── completion.lua         # Completion keybindings
│   ├── editor.lua             # Editor enhancement keybindings
│   ├── tool.lua               # Tool keybindings
│   └── ai.lua                 # AI-related keybindings
│
└── plugins/                    # Additional plugins (automatically loaded)
    ├── completion.lua         # Custom completion plugins
    ├── editor.lua             # Custom editor plugins
    └── ui.lua                 # Custom UI plugins
```

## 🚀 Quick Start

### 1. Configure Global Settings

Edit `settings.lua` to customize your Neovim experience:

```lua
local settings = {}

-- Enable/disable features
settings["use_ssh"] = true                      -- Use SSH for git
settings["format_on_save"] = true              -- Auto-format on save
settings["use_copilot"] = true                 -- Enable GitHub Copilot
settings["use_chat"] = true                    -- Enable AI chat

-- Appearance
settings["colorscheme"] = "catppuccin"         -- catppuccin, catppuccin-latte, etc.
settings["transparent_background"] = true      -- Transparent background
settings["background"] = "dark"                -- "dark" or "light"

-- LSP & Completion
settings["lsp_inlayhints"] = true              -- Show type hints
settings["format_notify"] = true               -- Show format notifications

-- Language/Region
settings["chat_lang"] = "English"              -- "English" or "Chinese"

return settings
```

### 2. Add Custom Keybindings

Create a file in `keymap/` or edit existing ones:

```lua
-- lua/user/keymap/core.lua
local bind = require("keymap.bind")
local map_cr = bind.map_cr

return {
  ["n|<leader>xx"] = map_cr("YourCommand")
    :with_noremap()
    :with_silent()
    :with_desc("Your custom command"),
}
```

See **KEYBINDINGS.md** for all current custom keybindings.

### 3. Add Custom Plugins

Create a file in `plugins/` or edit existing ones:

```lua
-- lua/user/plugins/editor.lua
return {
  {
    "author/plugin-name",
    event = "VeryLazy",
    config = function()
      require("plugin").setup({ option = true })
    end,
  },
}
```

### 4. Override Plugin Configurations

Create files in `configs/` to override default settings:

```lua
-- lua/user/configs/completion/copilot-chat.lua
return {
  -- Your Copilot Chat configuration here
}
```

## ⚙️ Configuration Files

### `settings.lua` - Main Configuration File

This is the **most important file**. It controls all global settings and feature flags.

**Key Options:**

| Setting | Type | Default | Purpose |
|---------|------|---------|---------|
| `use_ssh` | boolean | false | Use SSH for git operations |
| `format_on_save` | boolean | false | Auto-format files on save |
| `format_notify` | boolean | false | Show format notifications |
| `use_copilot` | boolean | false | Enable GitHub Copilot |
| `use_chat` | boolean | true | Enable AI chat (CodeCompanion) |
| `copilot_chat` | boolean | true | Enable Copilot Chat |
| `colorscheme` | string | "catppuccin" | Color scheme to use |
| `transparent_background` | boolean | false | Use transparent background |
| `background` | string | "dark" | "dark" or "light" |
| `lsp_inlayhints` | boolean | false | Show inlay type hints |
| `chat_lang` | string | "English" | Chat language ("English" or "Chinese") |
| `search_backend` | string | "telescope" | "telescope" or "fzf" |
| `lsp_deps` | table | See below | LSP servers to install |
| `null_ls_deps` | table | See below | Formatters/linters to install |
| `treesitter_deps` | table | See below | Treesitter parsers to install |
| `dap_deps` | table | See below | Debug adapters to install |

### `options.lua` - Custom Neovim Options

Add custom vim options here:

```lua
local options = {}

options["number"] = true
options["relativenumber"] = true
options["tabstop"] = 4
options["shiftwidth"] = 4
options["expandtab"] = true

return options
```

### `event.lua` - Custom Autocommands

Define custom autocommands and event handlers:

```lua
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local group = augroup("UserGroup", { clear = true })

autocmd("FileType", {
  group = group,
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 4
  end,
})
```

### `dashboard.lua` - Custom Dashboard

Define custom ASCII art for the dashboard:

```lua
return {
  [[  ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆  ]],
  [[   ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉  ]],
  -- Add more ASCII art lines
}
```

## 📚 Advanced Configuration

### Adding New LSP Servers

Edit `settings.lua`:

```lua
settings["lsp_deps"] = {
  "lua_ls",
  "gopls",
  "your_new_server",  -- Add here
}
```

Then restart Neovim. Mason will automatically install the new server.

### Adding Formatters/Linters

```lua
settings["null_ls_deps"] = {
  "prettier",
  "stylua",
  "your_formatter",  -- Add here
}
```

### Adding Treesitter Parsers

```lua
settings["treesitter_deps"] = {
  "lua",
  "go",
  "your_language",  -- Add here
}
```

### Project-Specific Configuration

Create `.neoconf.json` in your project root:

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

## 🎨 Theming & Appearance

### Change Colorscheme

```lua
settings["colorscheme"] = "catppuccin-mocha"  -- mocha, latte, frappe, macchiato
```

### Enable Transparency

```lua
settings["transparent_background"] = true
```

### Override Colors

```lua
settings["palette_overwrite"] = {
  sky = "#04A5E5",
  red = "#F38BA8",
}
```

## 🔑 Keybindings

See **KEYBINDINGS.md** for:
- All custom keybindings organized by category
- How to add new keybindings
- Keybinding helper functions

## ❌ Common Mistakes to Avoid

1. **Editing files outside `lua/user/`** - Your changes will be overwritten on update
   - ✅ Good: Edit `lua/user/settings.lua`
   - ❌ Bad: Edit `lua/modules/configs/init.lua`

2. **Not restarting Neovim after changes** - Settings need a restart to take effect
   - Run `:Lazy sync` then restart Neovim

3. **Forgetting to return values** - All Lua files must return their configuration
   - ✅ Good: `return settings` or `return { ... }`
   - ❌ Bad: Just defining settings without returning

4. **Syntax errors in Lua** - Errors will break your config
   - Check `:messages` for error messages
   - Use `:Lazy profile` to debug slow startup

## 🐛 Troubleshooting

### Settings not applying?
- Check that you're editing `lua/user/settings.lua`
- Restart Neovim completely
- Check `:messages` for error messages

### Keybindings not working?
- Make sure files in `lua/user/keymap/` are properly formatted
- Run `:Lazy sync` to reload
- Check `:Telescope keymaps` to see all keybindings

### Plugins not loading?
- Verify files in `lua/user/plugins/` return a table
- Run `:Lazy` to see plugin status
- Check `:messages` for error messages

### LSP server not installed?
- Add to `settings["lsp_deps"]`
- Run `:Mason` to manually install
- Run `:LspInfo` to check status

## 📖 Further Resources

- **Main README**: See `/README.md` in the main config
- **Keybindings**: See `KEYBINDINGS.md` in this folder
- **Configuration Guide**: See `CONFIG_GUIDE.md` in this folder
- **Lazy.nvim Docs**: https://github.com/folke/lazy.nvim
- **Neovim Docs**: `:help nvim`

## 💡 Tips

- Use `:set number` to show line numbers in Lua files
- Use `:Lazy sync` to sync and reload all plugins
- Use `:checkhealth` to verify your setup
- Use `:messages` to see error messages and logs

---

**Last Updated**: March 27, 2026

**Need Help?** Check the main README.md or visit https://github.com/channinghsu/nvim
