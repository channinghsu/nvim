local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_cu = bind.map_cu

return {
	["n|<leader><leader>x"] = map_cr("BufDel"):with_noremap():with_silent():with_desc("buffer: Close current"),
	["nv|<leader>ww"] = map_cmd("<Cmd>HopWordMW<CR>"):with_noremap():with_desc("jump: Goto word"),
	["n|<A-H>"] = map_cu("SmartCursorMoveLeft"):with_silent():with_noremap():with_desc("window: Focus left"),
	["n|<A-J>"] = map_cu("SmartCursorMoveDown"):with_silent():with_noremap():with_desc("window: Focus down"),
	["n|<A-K>"] = map_cu("SmartCursorMoveUp"):with_silent():with_noremap():with_desc("window: Focus up"),
	["n|<A-L>"] = map_cu("SmartCursorMoveRight"):with_silent():with_noremap():with_desc("window: Focus right"),
	["n|<leader>t"] = map_cmd("<Cmd>Twilight<CR>"):with_noremap():with_desc("Twilight: Toggle Twilight"),
	["n|<leader>z"] = map_cmd("<Cmd>ZenMode<CR>"):with_noremap():with_desc("ZenMode: Toggle ZenMode"),
}
