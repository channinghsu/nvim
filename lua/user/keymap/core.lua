local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

return {
	["n|L"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent():with_nowait():with_desc("buffer: Switch to next"),
	["n|H"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent():with_nowait():with_desc("buffer: Switch to prev"),
	["n|<leader>w"] = map_cu("write"):with_noremap():with_silent():with_desc("edit: Save file"),
	["i|<leader>w"] = map_cmd("<Esc>:w<CR>"):with_desc("edit: Save file"),
	["n|<leader>x"] = map_cr("wq"):with_desc("edit: Save file and quit"),
	["i|<leader>x"] = map_cmd("<Esc>:wq<CR>"):with_desc("edit: Save file and quit"),
	["n|<leader>q"] = map_cr("q!"):with_desc("edit: Force quit"),
	["i|<leader>q"] = map_cmd("<Esc>:q!<CR>"):with_desc("edit: Force quit"),
	["n|<leader>h"] = map_cmd("ggVG"):with_noremap():with_silent():with_desc("edit: Select all text in the document"),
	["i|jk"] = map_cmd("<Esc>:w<CR>"):with_noremap():with_silent():with_nowait():with_desc("edit: Save file"),
}
