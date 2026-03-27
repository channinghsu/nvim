# Configuration Guide & Examples

This guide provides practical examples and best practices for configuring your Neovim setup. It covers common customization tasks and advanced configurations.

## Table of Contents

1. [Settings Configuration](#settings-configuration)
2. [Editor Options](#editor-options)
3. [Custom Keybindings](#custom-keybindings)
4. [Plugins](#plugins)
5. [Language-Specific Setup](#language-specific-setup)
6. [Troubleshooting](#troubleshooting)

---

## Settings Configuration

### Basic Setup

Edit `lua/user/settings.lua` to customize your experience:

```lua
local settings = {}

-- Enable/disable features
settings["use_ssh"] = true
settings["format_on_save"] = true
settings["use_copilot"] = true
settings["use_chat"] = true

-- Appearance
settings["colorscheme"] = "catppuccin"
settings["transparent_background"] = true
settings["background"] = "dark"

-- LSP
settings["lsp_inlayhints"] = true

-- Chat language
settings["chat_lang"] = "English"  -- or "Chinese"

return settings
```

### Adding Language Servers

Add LSP servers to auto-install them:

```lua
settings["lsp_deps"] = {
  -- Already included
  "lua_ls",
  "gopls",
  
  -- Add your languages
  "rust_analyzer",    -- Rust
  "pyright",          -- Python (alternative to pylsp)
  "ts_ls",            -- JavaScript/TypeScript
  "clangd",           -- C/C++
  "eslint",           -- JavaScript linting
}
```

### Adding Formatters

Configure formatters for code formatting:

```lua
settings["null_ls_deps"] = {
  -- Already included
  "prettier",
  "stylua",
  "goimports",
  
  -- Add formatters
  "black",            -- Python
  "isort",            -- Python imports
  "rust",             -- Rust (rustfmt)
  "terraform",        -- Terraform
}

-- Optional: Configure formatter settings
settings["formatter_block_list"] = {
  lua = false,        -- false = enabled, true = disabled
  python = false,
  rust = false,
}

-- Optional: Disable for specific server
settings["server_formatting_block_list"] = {
  pylsp = true,       -- Disable formatting from pylsp
}
```

### Adding Treesitter Parsers

Install language parsers for syntax highlighting:

```lua
settings["treesitter_deps"] = {
  "lua",
  "go",
  "rust",
  "python",
  "javascript",
  "typescript",
  "json",
  "yaml",
  "markdown",
  "bash",
  "c",
  "cpp",
  -- Add more as needed
}
```

### Adding Debug Adapters

Configure debugging support:

```lua
settings["dap_deps"] = {
  "codelldb",     -- C/C++, Rust
  "delve",        -- Go
  "debugpy",      -- Python
}
```

---

## Editor Options

### Tabs & Indentation

Configure indentation behavior in `lua/user/options.lua`:

```lua
local options = {
  -- Tab behavior
  expandtab = true,       -- Use spaces instead of tabs
  tabstop = 4,            -- Tab width = 4 spaces
  shiftwidth = 4,         -- Indent width = 4 spaces
  softtabstop = 4,        -- Backspace deletes 4 spaces
  smartindent = true,     -- Smart indentation
  
  -- Different indentation for specific filetypes
  -- (Add in event.lua for more control)
}

return options
```

### Custom Indentation by Filetype

Add to `lua/user/event.lua`:

```lua
local definitions = {
  bufs = {
    { "BufWritePre", "COMMIT_EDITMSG", "setlocal noundofile" },
  },
  filetypes = {
    -- 2-space indentation for web files
    { "FileType", "javascript", "setlocal tabstop=2 shiftwidth=2 softtabstop=2" },
    { "FileType", "typescript", "setlocal tabstop=2 shiftwidth=2 softtabstop=2" },
    { "FileType", "json", "setlocal tabstop=2 shiftwidth=2 softtabstop=2" },
    { "FileType", "yaml", "setlocal tabstop=2 shiftwidth=2 softtabstop=2" },
    
    -- 4-space for others (or just use default)
    { "FileType", "python", "setlocal tabstop=4 shiftwidth=4 softtabstop=4" },
    { "FileType", "lua", "setlocal tabstop=2 shiftwidth=2 softtabstop=2" },
  },
}

return definitions
```

### Visual Settings

```lua
local options = {
  -- Display
  number = true,          -- Show line numbers
  relativenumber = false, -- Relative line numbers (off)
  cursorline = true,      -- Highlight current line
  
  -- Scrolling
  scrolloff = 5,          -- Keep 5 lines above/below cursor
  sidescrolloff = 8,      -- Keep 8 columns left/right of cursor
  
  -- Visual feedback
  signcolumn = "yes",     -- Always show sign column
  
  -- Wrapping
  wrap = false,           -- Don't wrap long lines
}
```

---

## Custom Keybindings

### Adding a Simple Keybinding

Create `lua/user/keymap/custom.lua`:

```lua
local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd

return {
  -- Command keybinding
  ["n|<leader>xx"] = map_cr("YourCommand")
    :with_noremap()
    :with_silent()
    :with_desc("Your description"),

  -- Key sequence keybinding
  ["n|<leader>yy"] = map_cmd("<Cmd>SomeNeovimCommand<CR>")
    :with_noremap()
    :with_silent()
    :with_desc("Another command"),
}
```

Register it in `lua/user/keymap/init.lua`:

```lua
return vim.tbl_extend(
  "force",
  require("user.keymap.core"),
  require("user.keymap.completion").plug_map,
  require("user.keymap.editor"),
  require("user.keymap.tool"),
  require("user.keymap.ai"),
  require("user.keymap.custom"),  -- Add this
)
```

### Adding a Callback Keybinding

```lua
local bind = require("keymap.bind")
local map_callback = bind.map_callback

return {
  ["n|<leader>zz"] = map_callback(function()
      -- Your Lua code here
      vim.notify("Hello from custom keybinding!", vim.log.levels.INFO)
      
      -- Example: Toggle a feature
      vim.opt_local.number = not vim.opt_local.number:get()
    end)
    :with_noremap()
    :with_silent()
    :with_desc("Toggle line numbers"),
}
```

### Buffer-Specific Keybindings

For keybindings that only work with LSP:

```lua
-- In lua/user/keymap/completion.lua
mappings["lsp"] = function(buf)
  return {
    ["n|<leader>rn"] = map_cr("Lspsaga rename")
      :with_buffer(buf)  -- Important: limits to this buffer
      :with_noremap()
      :with_desc("Rename symbol"),
  }
end
```

---

## Plugins

### Adding Custom Plugins

Create `lua/user/plugins/custom.lua`:

```lua
return {
  -- Simple plugin with default config
  {
    "author/plugin-name",
    event = "VeryLazy",  -- Lazy load on VeryLazy event
  },

  -- Plugin with custom configuration
  {
    "author/plugin-name",
    event = "VeryLazy",
    config = function()
      require("plugin").setup({
        option1 = true,
        option2 = "value",
        colors = {
          red = "#ff0000",
          blue = "#0000ff",
        },
      })
    end,
  },

  -- Plugin loaded by command
  {
    "author/plugin-name",
    cmd = "PluginCommand",  -- Load when `:PluginCommand` is run
  },

  -- Plugin loaded by keybinding
  {
    "author/plugin-name",
    keys = {
      { "<leader>pp", "<cmd>PluginCommand<cr>", desc = "Plugin action" },
    },
  },

  -- Plugin with dependencies
  {
    "author/plugin-name",
    dependencies = {
      "dependency/plugin1",
      "dependency/plugin2",
    },
    config = function()
      -- Configuration
    end,
  },
}
```

Register it in `lua/user/keymap/init.lua` (or create a loader if needed).

### Disabling Plugins

```lua
-- Disable a core plugin by adding to user plugins
return {
  {
    "plugin/name",
    enabled = false,  -- This disables the plugin
  },
}
```

---

## Language-Specific Setup

### Python Setup

```lua
-- In lua/user/settings.lua
settings["lsp_deps"] = {
  "pylsp",        -- LSP server
  "pyright",      -- Alternative LSP (better)
}

settings["null_ls_deps"] = {
  "black",        -- Formatter
  "isort",        -- Import sorter
  "autopep8",     -- Alternative formatter
  "flake8",       -- Linter
}

settings["dap_deps"] = {
  "debugpy",      -- Python debugger
}

-- In lua/user/event.lua
local definitions = {
  filetypes = {
    { "FileType", "python", "setlocal tabstop=4 shiftwidth=4" },
  },
}
```

### Rust Setup

```lua
-- In lua/user/settings.lua
settings["lsp_deps"] = {
  "rust_analyzer",  -- Rust LSP
}

settings["null_ls_deps"] = {
  "rustfmt",        -- Rust formatter
}

settings["dap_deps"] = {
  "codelldb",       -- Rust debugger
}

settings["treesitter_deps"] = {
  "rust",           -- Syntax highlighting
}
```

### JavaScript/TypeScript Setup

```lua
-- In lua/user/settings.lua
settings["lsp_deps"] = {
  "ts_ls",          -- TypeScript/JavaScript LSP
  "eslint",         -- JavaScript linter
}

settings["null_ls_deps"] = {
  "prettier",       -- Formatter
}

-- In lua/user/event.lua
local definitions = {
  filetypes = {
    { "FileType", "javascript", "setlocal tabstop=2 shiftwidth=2" },
    { "FileType", "typescript", "setlocal tabstop=2 shiftwidth=2" },
    { "FileType", "json", "setlocal tabstop=2 shiftwidth=2" },
  },
}
```

### Go Setup

```lua
-- In lua/user/settings.lua
settings["lsp_deps"] = {
  "gopls",          -- Go LSP
}

settings["null_ls_deps"] = {
  "goimports",      -- Import formatter
  "gofumpt",        -- Go formatter
}

settings["dap_deps"] = {
  "delve",          -- Go debugger
}
```

---

## Troubleshooting

### Settings not applying?

1. **Check syntax** - Lua errors prevent config loading
   ```vim
   :messages  " Check for error messages
   ```

2. **Restart Neovim** - Some settings need restart
   ```bash
   # Completely close and reopen Neovim
   ```

3. **Verify return statement**
   ```lua
   return settings  " Must be at end of file
   ```

### Keybindings not working?

1. **Check if keybinding is registered**
   ```vim
   :Telescope keymaps
   " Search for your keybinding
   ```

2. **Check for conflicts**
   ```vim
   :verbose map <your-keybinding>
   " Shows which file defined it
   ```

3. **Check syntax in keymap file**
   ```vim
   :messages  " Check for Lua errors
   ```

### Plugins not loading?

1. **Check plugin status**
   ```vim
   :Lazy
   " Shows all plugins and their status
   ```

2. **Check for errors**
   ```vim
   :checkhealth
   :messages
   ```

3. **Sync plugins**
   ```vim
   :Lazy sync
   " Reinstall all plugins
   ```

### LSP not working?

1. **Check LSP status**
   ```vim
   :LspInfo
   :checkhealth nvim-lspconfig
   ```

2. **Manually install server**
   ```vim
   :Mason
   " Find your server and install it
   ```

3. **Check if server is in path**
   ```bash
   which lua-language-server
   which gopls
   ```

---

## Best Practices

1. **Keep settings organized** - Group related settings together
2. **Use descriptive names** - Make purpose clear
3. **Add comments** - Explain "why" not just "what"
4. **Test incrementally** - Test changes before adding more
5. **Use variables** - Avoid magic numbers/strings
6. **Follow patterns** - Use existing code as template
7. **Document changes** - Update README when adding features

---

## Advanced Topics

### Project-Specific Settings

Create `.neoconf.json` in your project root:

```json
{
  "lsp": {
    "lua_ls": {
      "settings": {
        "Lua": {
          "diagnostics": {
            "globals": ["vim", "describe", "it"]
          }
        }
      }
    },
    "pylsp": {
      "settings": {
        "pylsp": {
          "maxLineLength": 88
        }
      }
    }
  }
}
```

### Environment-Specific Configuration

```lua
-- In lua/user/settings.lua
local settings = {}

-- Detect environment
local is_work = os.getenv("WORK_MODE") == "true"
local is_light_theme = os.getenv("THEME") == "light"

if is_work then
  settings["lsp_inlayhints"] = true
  settings["format_on_save"] = true
else
  settings["lsp_inlayhints"] = false
  settings["format_on_save"] = false
end

if is_light_theme then
  settings["colorscheme"] = "catppuccin-latte"
  settings["background"] = "light"
else
  settings["colorscheme"] = "catppuccin-mocha"
  settings["background"] = "dark"
end

return settings
```

---

## Resources

- **Main README**: See `../README.md`
- **Keybindings**: See `KEYBINDINGS.md`
- **Structure**: See `README.md`
- **Lazy.nvim**: https://github.com/folke/lazy.nvim
- **Neovim Docs**: `:help lua`

---

**Last Updated**: March 27, 2026

For more help, check the main README or visit https://github.com/channinghsu/nvim
