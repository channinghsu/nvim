local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd

return {
	["n|<leader><leader>x"] = map_cr("BufDel"):with_noremap():with_silent():with_desc("buffer: Close current"),
	["nv|<leader>ww"] = map_cmd("<Cmd>HopWordMW<CR>"):with_noremap():with_desc("jump: Goto word"),
	["n|<A-h>"] = map_cmd("<C-w>h"):with_noremap():with_desc("window: Focus left"),
	["n|<A-l>"] = map_cmd("<C-w>l"):with_noremap():with_desc("window: Focus right"),
	["n|<leader>t"] = map_cmd("<Cmd>Twilight<CR>"):with_noremap():with_desc("Twilight: Toggle Twilight"),
	["n|<leader>z"] = map_cmd("<Cmd>ZenMode<CR>"):with_noremap():with_desc("ZenMode: Toggle ZenMode"),
}
