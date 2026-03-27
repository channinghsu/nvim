-- ============================================================================
-- Editor Enhancement Keybindings
-- ============================================================================
-- Window navigation, text manipulation, and code formatting keybindings
-- ============================================================================

local bind = require("keymap.bind")
local map_cmd = bind.map_cmd
local map_cu = bind.map_cu  -- Map to custom user command
local map_callback = bind.map_callback  -- Map to Lua callback

return {
	-- =========================================================================
	-- Window Navigation (using Alt + Arrow keys)
	-- =========================================================================
	-- These keybindings allow quick navigation between split windows
	-- using Alt (Option on Mac) + H/J/K/L

	-- Focus left window
	-- Usage: Alt + H
	["n|<A-H>"] = map_cu("SmartCursorMoveLeft")
		:with_silent()
		:with_noremap()
		:with_desc("window: Focus left"),

	-- Focus down window
	-- Usage: Alt + J
	["n|<A-J>"] = map_cu("SmartCursorMoveDown")
		:with_silent()
		:with_noremap()
		:with_desc("window: Focus down"),

	-- Focus up window
	-- Usage: Alt + K
	["n|<A-K>"] = map_cu("SmartCursorMoveUp")
		:with_silent()
		:with_noremap()
		:with_desc("window: Focus up"),

	-- Focus right window
	-- Usage: Alt + L
	["n|<A-L>"] = map_cu("SmartCursorMoveRight")
		:with_silent()
		:with_noremap()
		:with_desc("window: Focus right"),

	-- =========================================================================
	-- Navigation Enhancements
	-- =========================================================================

	-- Hop to word (similar to EasyMotion)
	-- Usage: <leader>w in normal or visual mode
	["nv|<leader>w"] = map_cmd("<Cmd>HopWordMW<CR>")
		:with_noremap()
		:with_desc("which_key_ignore"),

	-- =========================================================================
	-- Window Operations
	-- =========================================================================

	-- Vertical split
	-- Usage: <leader>v in normal mode
	["n|<leader>v"] = map_cu("vsplit")
		:with_noremap()
		:with_desc("window: Vertical split"),

	-- =========================================================================
	-- Code Formatting
	-- =========================================================================

	-- Format selected code
	-- Usage: Alt + = in visual mode (after selecting code)
	-- Requires LSP to be attached
	["v|<A-=>"] = map_callback(function()
		-- Exit visual mode first
		vim.api.nvim_feedkeys(
			vim.api.nvim_replace_termcodes("<Esc>", true, false, true),
			"n",
			false
		)

		-- Get the visual selection marks
		local start_pos = vim.api.nvim_buf_get_mark(0, "<")  -- Start of selection
		local end_pos = vim.api.nvim_buf_get_mark(0, ">")    -- End of selection

		-- Format the selected range using LSP
		vim.lsp.buf.format({
			async = true,
			range = {
				["start"] = start_pos,
				["end"] = end_pos,
			},
		})
	end)
		:with_noremap()
		:with_silent()
		:with_desc("formatter: Format selected code"),
}
