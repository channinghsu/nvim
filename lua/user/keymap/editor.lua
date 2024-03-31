local bind = require("keymap.bind")
local map_cmd = bind.map_cmd
local map_cu = bind.map_cu

return {
	["n|<leader>t"] = map_cmd("<Cmd>Twilight<CR>"):with_noremap():with_desc("Twilight: Toggle Twilight"),
	["n|<leader>z"] = map_cmd("<Cmd>ZenMode<CR>"):with_noremap():with_desc("ZenMode: Toggle ZenMode"),
	["nv|<leader>j"] = map_cmd("<Cmd>HopWordMW<CR>"):with_noremap():with_desc("jump: Goto word"),
}
