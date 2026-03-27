-- ============================================================================
-- Tool & Debug Keybindings
-- ============================================================================
-- Search, file navigation, and debugging keybindings
-- ============================================================================

local bind = require("keymap.bind")
local map_callback = bind.map_callback
local map_cu = bind.map_cu  -- Map to custom user command

return {
	-- =========================================================================
	-- Search & Navigation
	-- =========================================================================

	-- Change directory using zoxide (quick directory jumps)
	-- Usage: <leader>fz
	-- Note: Requires zoxide to be installed
	["n|<leader>fz"] = map_cu("Telescope zoxide list")
		:with_noremap()
		:with_silent()
		:with_desc("edit: Change current directory by zoxide"),

	-- Live grep with arguments (search project with filters)
	-- Usage: <leader>fw
	-- Allows advanced search patterns
	["n|<leader>fw"] = map_callback(function()
		require("telescope").extensions.live_grep_args.live_grep_args()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("find: Word in project"),

	-- Find word under cursor in project
	-- Usage: <leader>fs
	-- Automatically searches for the word at cursor position
	["n|<leader>fs"] = map_cu("Telescope grep_string")
		:with_noremap()
		:with_silent()
		:with_desc("tool: Find word under cursor"),

	-- Find file by history (recently opened files)
	-- Usage: <leader>fe
	-- Quick access to recent files
	["n|<leader>fe"] = map_cu("Telescope oldfiles")
		:with_noremap()
		:with_silent()
		:with_desc("find: File by history"),

	-- =========================================================================
	-- File Explorer
	-- =========================================================================

	-- Toggle file explorer (nvim-tree)
	-- Usage: <leader>e
	-- Toggles the left panel file explorer
	["n|<leader>e"] = map_callback(function()
		local edgy = require("edgy")
		local config = require("edgy.config")
		local has_open = #config.layout.left.wins > 0

		if has_open then
			edgy.close("left")
		else
			vim.cmd("NvimTreeToggle")
		end
	end),

	-- =========================================================================
	-- Debugging (DAP - Debug Adapter Protocol)
	-- =========================================================================
	-- Keybindings for debugging support
	-- Requires: nvim-dap plugin and appropriate debug adapters
	--
	-- Supported languages:
	--   - C/C++ (via codelldb or lldb)
	--   - Go (via delve)
	--   - Python (via debugpy)
	--   - Rust (via codelldb)

	-- Run/Continue debugging
	-- Usage: <leader>dd
	-- Starts debugging session or continues from breakpoint
	["n|<leader>dd"] = map_callback(function()
		require("dap").continue()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Run/Continue"),

	-- Stop debugging
	-- Usage: <leader>dj
	-- Terminates the current debugging session
	["n|<leader>dj"] = map_callback(function()
		require("dap").terminate()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Stop"),

	-- Toggle breakpoint
	-- Usage: <leader>db
	-- Sets or removes a breakpoint at the current line
	["n|<leader>db"] = map_callback(function()
		require("dap").toggle_breakpoint()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Toggle breakpoint"),

	-- Step into (enter function calls)
	-- Usage: Alt + L (Meta + L)
	-- Executes current line and enters function calls
	["n|<M-l>"] = map_callback(function()
		require("dap").step_into()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Step into"),

	-- Step out (exit current function)
	-- Usage: Alt + K (Meta + K)
	-- Executes until function returns
	["n|<M-k>"] = map_callback(function()
		require("dap").step_out()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Step out"),

	-- Step over (next line, don't enter functions)
	-- Usage: Alt + J (Meta + J)
	-- Executes next line but doesn't enter function calls
	["n|<M-j>"] = map_callback(function()
		require("dap").step_over()
	end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Step over"),
}
