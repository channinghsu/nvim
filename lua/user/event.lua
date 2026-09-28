-- ============================================================================
-- User Autocommands and Events
-- ============================================================================
-- This file defines custom autocommands and event handlers.
-- Events are triggered on specific buffer or window events.
--
-- Format:
--   { "event_name", "pattern", "command/callback" }
--
-- Common Events:
--   - BufRead, BufWritePost - Buffer operations
--   - BufWritePre - Before buffer write
--   - FileType - On filetype detection
--   - WinEnter, WinLeave - Window focus
--   - VimEnter, VimLeave - Editor start/exit
--
-- For more information:
--   - :help autocmd
--   - :help events
-- ============================================================================

local definitions = {
	-- Buffer-related events
	bufs = {
		-- Disable undo file for commit messages
		-- This prevents creating undo files for temporary git commits
		{ "BufWritePre", "COMMIT_EDITMSG", "setlocal noundofile" },
	},
	-- Add more event groups as needed:
	-- files = { ... },
	-- windows = { ... },
	-- etc.
}

-- Ensure Comment.nvim's `gcc` uses XML comments even when no XML Treesitter
-- parser is installed for nvim-ts-context-commentstring to inspect.
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("UserXmlCommentString", { clear = true }),
	pattern = "xml",
	callback = function(event)
		vim.bo[event.buf].commentstring = "<!-- %s -->"
	end,
})

-- ============================================================================
-- Custom Event Examples
-- ============================================================================
-- Uncomment to use:
--
-- -- Example: Set indentation for specific filetypes
-- definitions.filetypes = {
--   { "FileType", "python", "setlocal tabstop=4 shiftwidth=4" },
--   { "FileType", "javascript", "setlocal tabstop=2 shiftwidth=2" },
-- }
--
-- -- Example: Trim trailing whitespace on save
-- definitions.trim = {
--   { "BufWritePre", "*", "%s/\\s\\+$//e" },
-- }
-- ============================================================================

return definitions
