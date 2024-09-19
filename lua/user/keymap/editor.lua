local bind = require("keymap.bind")
local map_cmd = bind.map_cmd
local map_cu = bind.map_cu

return {
	["n|<A-u>"] = map_cu("SmartResizeLeft"):with_silent():with_noremap():with_desc("window: Resize -3 horizontally"),
	["n|<A-i>"] = map_cu("SmartResizeDown"):with_silent():with_noremap():with_desc("window: Resize -3 vertically"),
	["n|<A-o>"] = map_cu("SmartResizeUp"):with_silent():with_noremap():with_desc("window: Resize +3 vertically"),
	["n|<A-p>"] = map_cu("SmartResizeRight"):with_silent():with_noremap():with_desc("window: Resize +3 horizontally"),
	["n|<A-H>"] = map_cu("SmartCursorMoveLeft"):with_silent():with_noremap():with_desc("window: Focus left"),
	["n|<A-J>"] = map_cu("SmartCursorMoveDown"):with_silent():with_noremap():with_desc("window: Focus down"),
	["n|<A-K>"] = map_cu("SmartCursorMoveUp"):with_silent():with_noremap():with_desc("window: Focus up"),
	["n|<A-L>"] = map_cu("SmartCursorMoveRight"):with_silent():with_noremap():with_desc("window: Focus right"),
	["n|<leader>t"] = map_cmd("<Cmd>Twilight<CR>"):with_noremap():with_desc("Twilight: Toggle Twilight"),
	["n|<leader>z"] = map_cmd("<Cmd>ZenMode<CR>"):with_noremap():with_desc("ZenMode: Toggle ZenMode"),
	["nv|<leader>j"] = map_cmd("<Cmd>HopWordMW<CR>"):with_noremap():with_desc("which_key_ignore"),
	["nv|<leader>w"] = map_cmd("<Cmd>HopWordMW<CR>"):with_noremap():with_desc("which_key_ignore"),
	["nv|<leader>k"] = map_cmd("<Cmd>HopLineMW<CR>"):with_noremap():with_desc("which_key_ignore"),
	["nv|<leader>C"] = map_cmd("<Cmd>HopChar2MW<CR>"):with_noremap():with_desc("which_key_ignore"),
	["n|<leader>v"] = map_cu("vsplit"):with_noremap():with_desc("window: Vertical split"),
}
