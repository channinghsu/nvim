local bind = require("keymap.bind")
local map_cr = bind.map_cr

return {

	-- 切换标签页
	["n|L"] = map_cr("BufferLineCycleNext")
		:with_noremap()
		:with_silent()
		:with_nowait()
		:with_desc("buffer: Switch to next"),
	["n|H"] = map_cr("BufferLineCyclePrev")
		:with_noremap()
		:with_silent()
		:with_nowait()
		:with_desc("buffer: Switch to prev"),
}
