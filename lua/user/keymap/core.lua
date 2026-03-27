-- ============================================================================
-- Core Editor Keybindings
-- ============================================================================
-- Buffer and basic editor navigation/manipulation keybindings
-- ============================================================================

local bind = require("keymap.bind")
local map_cr = bind.map_cr  -- Map to command
local map_cmd = bind.map_cmd  -- Map to key sequence

return {
	-- =========================================================================
	-- Buffer Navigation (using H and L for quick switching)
	-- =========================================================================

	-- Switch to next buffer
	-- Usage: Press 'L' in normal mode
	["n|L"] = map_cr("BufferLineCycleNext")
		:with_noremap()
		:with_silent()
		:with_nowait()
		:with_desc("buffer: Switch to next"),

	-- Switch to previous buffer
	-- Usage: Press 'H' in normal mode
	["n|H"] = map_cr("BufferLineCyclePrev")
		:with_noremap()
		:with_silent()
		:with_nowait()
		:with_desc("buffer: Switch to prev"),

	-- =========================================================================
	-- Buffer/Window Operations
	-- =========================================================================

	-- Delete/close current buffer
	-- Usage: <leader>x (Space + x)
	["n|<leader>x"] = map_cr("BufDel")
		:with_noremap()
		:with_silent()
		:with_desc("which_key_ignore"),

	-- Force quit all without saving
	-- Usage: <leader>q (Space + q)
	-- ⚠️  Warning: Quits without saving!
	["n|<leader>q"] = map_cr("qa!")
		:with_desc("which_key_ignore"),

	-- =========================================================================
	-- Selection & Editing
	-- =========================================================================

	-- Select all content (gg = go to start, VG = select to end)
	-- Usage: <leader>i (Space + i)
	["n|<leader>i"] = map_cmd("ggVG")
		:with_noremap()
		:with_silent()
		:with_desc("which_key_ignore"),

	-- =========================================================================
	-- Insert Mode - Quick Save & Exit
	-- =========================================================================

	-- Save file and exit insert mode
	-- Usage: Type 'jk' in insert mode
	-- Note: Requires typing 'j' then 'k' quickly
	["i|jk"] = map_cmd("<Esc>:w<CR>")
		:with_noremap()
		:with_silent()
		:with_nowait()
		:with_desc("edit: Save file"),
}
