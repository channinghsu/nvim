-- ============================================================================
-- User Settings Configuration
-- ============================================================================
-- This file contains all user-specific settings that override the default
-- configuration. Settings defined here take precedence over the core config.
--
-- NOTE: All settings are optional. If not specified, default values are used.
--
-- For detailed documentation, see:
--   - lua/user/README.md
--   - lua/user/CONFIG_GUIDE.md
-- ============================================================================

local settings = {}

-- ============================================================================
-- Git & Installation Settings
-- ============================================================================
settings["use_ssh"] = false  -- Use SSH for git operations (vs HTTPS)

-- ============================================================================
-- Formatting Settings
-- ============================================================================
settings["format_on_save"] = false  -- Auto-format files on save
settings["format_notify"] = false   -- Show format notifications
settings["format_timeout"] = 1000   -- Format timeout in milliseconds

-- ============================================================================
-- Appearance Settings
-- ============================================================================
settings["colorscheme"] = "catppuccin"              -- Color scheme to use
settings["transparent_background"] = true          -- Transparent background
settings["background"] = "dark"                     -- "dark" or "light"

-- ============================================================================
-- LSP & Completion Settings
-- ============================================================================
settings["lsp_inlayhints"] = false  -- Show inlay type hints

-- ============================================================================
-- AI & Chat Settings
-- ============================================================================
settings["chat_lang"] = "Chinese"   -- Chat language ("English" or "Chinese")
settings["use_copilot"] = true      -- Enable GitHub Copilot
settings["copilot_chat"] = true     -- Enable Copilot Chat
settings["use_chat"] = true         -- Enable CodeCompanion AI chat

-- ============================================================================
-- Dashboard Settings
-- ============================================================================
settings["dashboard_image"] = require("user.dashboard")  -- Custom dashboard ASCII art

-- ============================================================================
-- Validation & Defaults
-- ============================================================================
-- Ensure required settings exist with sensible defaults
local function apply_defaults()
	-- Git settings
	settings["use_ssh"] = settings["use_ssh"] ~= nil and settings["use_ssh"] or false

	-- Format settings
	settings["format_on_save"] = settings["format_on_save"] ~= nil and settings["format_on_save"] or false
	settings["format_notify"] = settings["format_notify"] ~= nil and settings["format_notify"] or true
	settings["format_timeout"] = settings["format_timeout"] or 1000

	-- Appearance settings
	settings["colorscheme"] = settings["colorscheme"] or "catppuccin"
	settings["transparent_background"] = settings["transparent_background"] ~= nil and settings["transparent_background"] or false
	settings["background"] = settings["background"] or "dark"

	-- LSP settings
	settings["lsp_inlayhints"] = settings["lsp_inlayhints"] ~= nil and settings["lsp_inlayhints"] or false

	-- AI settings
	settings["chat_lang"] = settings["chat_lang"] or "English"
	settings["use_copilot"] = settings["use_copilot"] ~= nil and settings["use_copilot"] or true
	settings["copilot_chat"] = settings["copilot_chat"] ~= nil and settings["copilot_chat"] or true
	settings["use_chat"] = settings["use_chat"] ~= nil and settings["use_chat"] or true
end

-- Apply defaults
apply_defaults()

-- ============================================================================
-- Return Configuration
-- ============================================================================
return settings
