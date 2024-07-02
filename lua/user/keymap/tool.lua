local bind = require("keymap.bind")
local map_callback = bind.map_callback
local map_cr = bind.map_cr
local map_cu = bind.map_cu
return {
	["n|<leader>fz"] = map_cu("Telescope zoxide list")
		:with_noremap()
		:with_silent()
		:with_desc("edit: Change current directory by zoxide"),
	["n|<leader>fw"] = map_callback(function()
			require("telescope").extensions.live_grep_args.live_grep_args()
		end)
		:with_noremap()
		:with_silent()
		:with_desc("find: Word in project"),
	["n|<leader>fs"] = map_cu("Telescope grep_string")
		:with_noremap()
		:with_silent()
		:with_desc("tool: Find word under cursor"),
	["n|<leader>fe"] = map_cu("Telescope oldfiles"):with_noremap():with_silent():with_desc("find: File by history"),
	["n|<leader>e"] = map_cr("NvimTreeToggle"):with_noremap():with_silent():with_desc("filetree: Toggle"),
	["n|<leader>d"] = map_callback(function()
			require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end)
		:with_noremap()
		:with_silent()
		:with_desc("debug: Info"),
}
