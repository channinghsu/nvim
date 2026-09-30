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

-- GUI-launched Neovim may not source nvm's shell initialization. Add the
-- configured default Node.js runtime so Mason-installed npm servers can run.
local nvm_dir = vim.fn.expand("~/.nvm")
local default_alias = vim.fn.readfile(nvm_dir .. "/alias/default")[1]
local node_version = default_alias and default_alias:match("^v?(%d+%.%d+%.%d+)$")
if node_version then
	local node_bin = nvm_dir .. "/versions/node/v" .. node_version .. "/bin"
	if vim.fn.isdirectory(node_bin) == 1 then
		vim.env.PATH = node_bin .. ":" .. (vim.env.PATH or "")
	end
end

-- ============================================================================
-- Git & Installation Settings
-- ============================================================================
settings["use_ssh"] = false -- Use SSH for git operations (vs HTTPS)

-- ============================================================================
-- Formatting Settings
-- ============================================================================
settings["format_on_save"] = false -- Auto-format files on save
settings["format_notify"] = false -- Show format notifications
settings["format_timeout"] = 1000 -- Format timeout in milliseconds

-- ============================================================================
-- Appearance Settings
-- ============================================================================
settings["colorscheme"] = "catppuccin" -- Color scheme to use
settings["transparent_background"] = true -- Transparent background
settings["background"] = "dark" -- "dark" or "light"

-- ============================================================================
-- LSP & Completion Settings
-- ============================================================================
settings["lsp_inlayhints"] = false -- Show inlay type hints

-- ============================================================================
-- AI & Chat Settings
-- ============================================================================
settings["use_copilot"] = false -- Enable GitHub Copilot
settings["copilot_chat"] = false -- Enable Copilot Chat
settings["use_chat"] = false -- Enable CodeCompanion AI chat
settings["edit_prediction_source"] = "none" -- Disable AI completion predictions
settings["ai_api_key"] = "OPENAI_API_KEY"

-- Tequila API provides an OpenAI-compatible endpoint. Keep the key outside
-- this file and expose OPENAI_API_KEY before starting Neovim.
settings["ai_adapters"] = {
	tequila = {
		type = "openai-compatible",
		name = "Tequila API",
		base_url = vim.env.OPENAI_BASE_URL or "https://tequilaapi.cc/v1",
		chat_url = "/chat/completions",
		api_key = "OPENAI_API_KEY",
		models = {
			"gpt-5.6",
			"gpt-6-sol",
			"gpt-6-luna",
			"gpt-6-astra",
		},
		default_model = "gpt-5.6",
	},
}
settings["codecompanion_adapter"] = "tequila"
settings["pred_adapter"] = "tequila"
settings["pred_model"] = "gpt-5.6"


-- ============================================================================
-- Dashboard Settings
-- ============================================================================
settings["dashboard_image"] = require("user.dashboard") -- Custom dashboard ASCII art

-- Keep the base package lists, but let false-valued entries opt out of
-- automatic installation after the defaults are merged.
local function exclude_disabled(packages)
	return function(defaults)
		local filtered = {}
		for _, package in ipairs(defaults) do
			if packages[package] ~= false then
				table.insert(filtered, package)
			end
		end
		return filtered
	end
end

local filter_lsp_deps = exclude_disabled({
	gopls = false, -- Requires the Go toolchain, which is not installed.
	pyrefly = false, -- Mason's pinned PyPI release is unavailable in the configured index.
})

settings["lsp_deps"] = function(defaults)
	local filtered = filter_lsp_deps(defaults)
	table.insert(filtered, "jdtls") -- Java language server for Java navigation such as `gd`.
	return filtered
end

settings["null_ls_deps"] = exclude_disabled({
	gofumpt = false, -- Requires Go.
	goimports = false, -- Requires Go.
	clang_format = false, -- Mason's pinned PyPI release is unavailable in the configured index.
	vint = false, -- Mason's pinned PyPI release is unavailable in the configured index.
})

settings["dap_deps"] = exclude_disabled({
	delve = false, -- Requires the Go toolchain, which is not installed.
})
return settings
