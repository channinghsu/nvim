local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

return {
    -- 更方便地向下/上滚动
	["n|<leader>u"] = map_cmd("<C-u>"):with_noremap():with_silent():with_nowait():with_desc("tool: scoll up"),
    ["n|<leader>d"] = map_cmd("<C-d>"):with_noremap():with_silent():with_nowait():with_desc("tool: scoll down/debug"),

    -- 切换标签页
    ["n|L"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent():with_nowait():with_desc("buffer: Switch to next"),
    ["n|H"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent():with_nowait():with_desc("uffer: Switch to prev"),

    -- 快速移动一行
	-- Normal mode
	["n|J"] = map_cmd(":m .+1<CR>=="):with_desc("edit: Move this line down"),
	["n|K"] = map_cmd(":m .-2<CR>=="):with_desc("edit: Move this line up"),
	["n|<"] = map_cmd("<<"):with_desc("edit: Decrease indent"),
	["n|>"] = map_cmd(">>"):with_desc("edit: Increase indent"),

}