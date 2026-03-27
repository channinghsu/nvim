# Custom Keybindings Guide

This document lists all custom keybindings defined in your user configuration. All keybindings are defined in the `lua/user/keymap/` directory and are organized by category.

> **Leader Key**: `<Space>`

## 📖 Table of Contents

- [Core Keybindings](#core-keybindings)
- [Window & Navigation](#window--navigation)
- [Editor Enhancements](#editor-enhancements)
- [LSP & Completion](#lsp--completion)
- [Tools & Debugging](#tools--debugging)
- [AI Assistants](#ai-assistants)
- [Key Notation](#key-notation)
- [Adding Custom Keybindings](#adding-custom-keybindings)

---

## Core Keybindings

**File**: `keymap/core.lua`

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `H` | Normal | `BufferLineCyclePrev` | Switch to previous buffer |
| `L` | Normal | `BufferLineCycleNext` | Switch to next buffer |
| `<leader>x` | Normal | `BufDel` | Delete current buffer |
| `<leader>q` | Normal | `qa!` | Quit all without saving |
| `<leader>i` | Normal | `ggVG` | Select all (with motions) |
| `jk` | Insert | `<Esc>:w<CR>` | Exit insert mode and save |

### Usage Tips

- Use `H` and `L` to quickly switch between open buffers
- `<leader>q` forces quit without saving - use with caution!
- `jk` combination is fast - type `j` then `k` to save and exit insert mode

---

## Window & Navigation

**File**: `keymap/editor.lua`

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<A-H>` | Normal | `SmartCursorMoveLeft` | Focus left window |
| `<A-J>` | Normal | `SmartCursorMoveDown` | Focus down window |
| `<A-K>` | Normal | `SmartCursorMoveUp` | Focus up window |
| `<A-L>` | Normal | `SmartCursorMoveRight` | Focus right window |
| `<leader>w` | Normal, Visual | `HopWordMW` | Hop to word |
| `<leader>v` | Normal | `vsplit` | Vertical split |
| `<A-=>` | Visual | Format selection | Format selected code with LSP |

### Usage Tips

- Use `<A-H/J/K/L>` (Alt + Arrow) to navigate between split windows
- Use `<leader>w` for quick word jumping (like EasyMotion)
- Format visual selection with `<A-=>` - select code then use this keymap

### Key Notation

- `<A-...>` = Alt key
- `<C-...>` = Control key
- `<S-...>` = Shift key
- `<M-...>` = Meta/Command key

---

## LSP & Completion

**File**: `keymap/completion.lua`

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `K` | Normal | `Lspsaga hover_doc` | Show documentation |
| `gD` | Normal | `Glance definitions` | Preview definition |
| `gd` | Normal | `Lspsaga goto_definition` | Go to definition |
| `<leader>r` | Normal | `:make<CR>` | Run make (build) |
| `<leader>c` | Normal | `:make clean<CR>` | Clean build |

### Notes

- These keybindings are **only active when LSP is attached** to a buffer
- `K` opens hover documentation at cursor
- `gD` shows definitions in a preview window
- `gd` jumps to the definition

---

## Tools & Debugging

**File**: `keymap/tool.lua`

### Search & File Finding

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>fz` | Normal | `Telescope zoxide list` | Change directory (zoxide) |
| `<leader>fw` | Normal | Live grep with args | Search word in project (live grep) |
| `<leader>fs` | Normal | `Telescope grep_string` | Find word under cursor |
| `<leader>fe` | Normal | `Telescope oldfiles` | Find file by history |
| `<leader>e` | Normal | Toggle file tree | Open/close file explorer |

### Debugging (DAP)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>dd` | Normal | `dap.continue()` | Run/Continue debugging |
| `<leader>dj` | Normal | `dap.terminate()` | Stop debugging |
| `<leader>db` | Normal | `dap.toggle_breakpoint()` | Toggle breakpoint |
| `<M-l>` | Normal | `dap.step_into()` | Debug step into |
| `<M-k>` | Normal | `dap.step_out()` | Debug step out |
| `<M-j>` | Normal | `dap.step_over()` | Debug step over |

### Usage Tips

- Use `<leader>fz` to quickly navigate to projects via zoxide
- `<leader>fw` is great for finding files by content
- Debugging keybindings use Meta (M) key: `<M-j>`, `<M-k>`, `<M-l>`
- Set breakpoints with `<leader>db` before running `<leader>dd`

---

## AI Assistants

**File**: `keymap/ai.lua`

All AI keybindings use the `<leader>a` prefix and are related to Copilot Chat.

### Chat Management

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>av` | Normal | `CopilotChatToggle` | Toggle Copilot Chat window |
| `<leader>ar` | Normal | `CopilotChatReset` | Reset conversation history |
| `<leader>as` | Normal | `CopilotChatStop` | Stop current response |
| `<leader>al` | Normal | `CopilotChatLoad` | Load saved conversation |
| `<leader>aS` | Normal | `CopilotChatSave` | Save current conversation |
| `<leader>aP` | Normal | `CopilotChatModels` | Select AI model |
| `<leader>ap` | Normal | `CopilotChatPrompts` | Select prompt template |

### Code Actions

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>ae` | Normal, Visual | `CopilotChatExplain` | Explain selected code |
| `<leader>aR` | Normal, Visual | `CopilotChatReview` | Code review |
| `<leader>af` | Normal, Visual | `CopilotChatFix` | Fix code issues |
| `<leader>ao` | Normal, Visual | `CopilotChatOptimize` | Optimize code |
| `<leader>ad` | Normal, Visual | `CopilotChatDocs` | Generate documentation |
| `<leader>at` | Normal, Visual | `CopilotChatTests` | Write unit tests |

### Git Commands

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>ac` | Normal | `CopilotChatCommit` | Generate commit message (Chinese) |
| `<leader>aC` | Normal | `CopilotChatCommitStaged` | Generate commit for staged changes |
| `<leader>aF` | Normal | `CopilotChatFixDiagnostic` | Fix diagnostic errors |

### Custom Questions

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>aq` | Normal, Visual | Custom question | Ask custom question to Copilot |

**Usage**: 
- Normal mode: Ask question about entire buffer
- Visual mode: Ask question about selected text
- A popup will appear asking for your question

### Quick Reference

```
Copilot Chat Prefix: <leader>a

a + v = Toggle window
a + r = Reset history
a + e = Explain code
a + R = Review code
a + f = Fix code
a + o = Optimize code
a + d = Generate docs
a + t = Write tests
a + c = Commit message
a + q = Custom question
```

---

## Adding Custom Keybindings

### 1. Create a New Keymap File

Create a file in `lua/user/keymap/`, e.g., `lua/user/keymap/custom.lua`:

```lua
local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

return {
  -- Simple command mapping
  ["n|<leader>xx"] = map_cr("YourCommand")
    :with_noremap()
    :with_silent()
    :with_desc("Your custom command"),

  -- Command with keysend
  ["n|<leader>yy"] = map_cmd("<Cmd>SomeCommand<CR>")
    :with_noremap()
    :with_desc("Another command"),

  -- Callback function (complex logic)
  ["n|<leader>zz"] = map_callback(function()
      vim.notify("Hello from custom keymap!", vim.log.levels.INFO)
    end)
    :with_noremap()
    :with_desc("Callback example"),

  -- Visual mode mapping
  ["v|<leader>vv"] = map_cmd("<Cmd>YourVisualCommand<CR>")
    :with_noremap()
    :with_desc("Visual command"),
}
```

### 2. Register in Init

Edit `lua/user/keymap/init.lua` to include your new file:

```lua
return vim.tbl_extend(
  "force",
  require("user.keymap.core"),
  require("user.keymap.completion").plug_map,
  require("user.keymap.editor"),
  require("user.keymap.tool"),
  require("user.keymap.ai"),
  require("user.keymap.custom"),  -- Add this line
)
```

### 3. Restart Neovim

Restart Neovim and your new keybindings will be loaded automatically.

### Key Binding API

```lua
local bind = require("keymap.bind")

-- Available builders
bind.map_cr(command)           -- Map to a command
bind.map_cmd(keys)              -- Map to key sequence
bind.map_callback(function)     -- Map to Lua function

-- Chainable options
:with_noremap()                 -- Non-recursive mapping
:with_silent()                  -- No command output
:with_nowait()                  -- No timeout
:with_buffer(buf)               -- Buffer-specific mapping
:with_desc(description)         -- Description for which-key
```

### Example: LSP Buffer-Specific Keybinding

For LSP keybindings that should only work when LSP is attached:

```lua
-- In lua/user/keymap/completion.lua
mappings["lsp"] = function(buf)
  return {
    ["n|<leader>rn"] = map_cr("Lspsaga rename")
      :with_buffer(buf)
      :with_desc("lsp: Rename symbol"),
  }
end
```

### Mode Prefixes

| Prefix | Meaning |
|--------|---------|
| `n` | Normal mode |
| `i` | Insert mode |
| `v` | Visual mode |
| `x` | Visual block mode |
| `t` | Terminal mode |
| `nv` | Normal and Visual |
| `nvi` | Normal, Visual, Insert |

### Common Commands

```lua
-- Neovim commands
"w"              -- Save
"q"              -- Quit
"wq"             -- Save and quit

-- With Cmd builder
"<Cmd>command<CR>"  -- Execute command
"<Esc>ggVG"         -- Escape then select all

-- With Callback
function() vim.cmd("command") end
function() require("module").function() end
```

---

## Viewing All Keybindings

### In Neovim

```vim
" View all keybindings
:Telescope keymaps

" Search for specific keybinding
:Telescope keymaps search_text=<leader>a
```

### Check Keybinding Conflicts

```vim
" View keybindings by prefix
:map <leader>a
:map <leader>f
:map <leader>d
```

---

## Tips & Best Practices

1. **Use `:with_desc()`** - Adds descriptions shown in which-key menu
2. **Group related bindings** - Keep related commands in same file
3. **Use consistent prefixes** - e.g., `<leader>a` for AI, `<leader>d` for debugging
4. **Avoid conflicts** - Use `:Telescope keymaps` to check existing bindings
5. **Test after changes** - Restart Neovim to ensure bindings work
6. **Use `<leader>` key** - More ergonomic than hard-coded keys

---

## Common Issues

### Keybinding not working?
- Check `:Telescope keymaps` to see if keybinding is registered
- Verify syntax - Lua errors will prevent loading
- Restart Neovim completely
- Check `:messages` for error messages

### Keybinding conflicts?
- Use `:verbose map <keybinding>` to see which file defined it
- Remove conflicting binding from appropriate file
- Restart Neovim

### Can't see description?
- Make sure to use `:with_desc("description")`
- Run `:Telescope keymaps` to verify description appears

---

**Last Updated**: March 27, 2026

For more information, see `README.md` or the main `../README.md`
