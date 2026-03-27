-- ============================================================================
-- LSP & Completion Keybindings
-- ============================================================================
-- These keybindings are only active when LSP is attached to a buffer
-- They provide code navigation, documentation, and build commands
-- ============================================================================

local mappings = {}

local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd

-- ============================================================================
-- Global Keymaps (always active)
-- ============================================================================
mappings["plug_map"] = {}

-- ============================================================================
-- LSP Buffer-Specific Keymaps
-- ============================================================================
-- NOTE: These keybindings are ONLY effective in buffers with LSP attached
-- They are activated automatically when an LSP server connects to a buffer
--
-- Make sure to include `:with_buffer(buf)` to limit the scope of mappings
--
-- @param buf number - The buffer number where these mappings are active
mappings["lsp"] = function(buf)
	return {
		-- =====================================================================
		-- Documentation & Hover
		-- =====================================================================

		-- Show documentation (hover information)
		-- Usage: K (capital k)
		-- Shows function signature, documentation, and type information
		["n|K"] = require("keymap.bind").map_cr("Lspsaga hover_doc")
			:with_buffer(buf)
			:with_desc("lsp: Show doc"),

		-- =====================================================================
		-- Navigation & Definitions
		-- =====================================================================

		-- Preview definition in a floating window
		-- Usage: gD (shift + d after g)
		-- Shows definition without jumping to it
		["n|gD"] = map_cr("Glance definitions")
			:with_silent()
			:with_buffer(buf)
			:with_desc("lsp: Preview definition"),

		-- Go to definition (jump to definition location)
		-- Usage: gd (d after g)
		-- Jumps directly to where symbol is defined
		["n|gd"] = map_cr("Lspsaga goto_definition")
			:with_silent()
			:with_buffer(buf)
			:with_desc("lsp: Goto definition"),

		-- =====================================================================
		-- Build Commands
		-- =====================================================================

		-- Build/compile current project
		-- Usage: <leader>r
		-- Runs the 'make' command (requires Makefile)
		["n|<leader>r"] = map_cmd(":make<CR>")
			:with_desc("which_key_ignore"),

		-- Clean build artifacts
		-- Usage: <leader>c
		-- Runs 'make clean' (requires Makefile)
		["n|<leader>c"] = map_cmd(":make clean<CR>")
			:with_desc("which_key_ignore"),
	}
end

return mappings
