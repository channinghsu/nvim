local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd

return {
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
	["n|<leader>x"] = map_cr("BufDel"):with_noremap():with_silent():with_desc("which_key_ignore"),
	["n|<leader>q"] = map_cr("qa!"):with_desc("which_key_ignore"),
	["n|<leader>i"] = map_cmd("ggVG"):with_noremap():with_silent():with_desc("which_key_ignore"),
	["i|jk"] = map_cmd("<Esc>:w<CR>"):with_noremap():with_silent():with_nowait():with_desc("edit: Save file"),
	-- copilot config
	["n|<leader>av"] = map_cr("CopilotChatToggle")
		:with_noremap()
		:with_silent()
		:with_desc("CopilotChat: Toggle chat window"),
	["n|<leader>ar"] = map_cr("CopilotChatReset")
		:with_noremap()
		:with_silent()
		:with_desc("CopilotChat: Reset chat window"),
	["n|<leader>as"] = map_cr("CopilotChatStop")
		:with_noremap()
		:with_silent()
		:with_desc("CopilotChat: Stop current output"),
	["n|<leader>al"] = map_cr("CopilotChatLoad")
		:with_noremap()
		:with_silent()
		:with_desc("CopilotChat Load chat history"),
	["n|<leader>ap"] = map_cr("CopilotChatPrompts")
		:with_noremap()
		:with_silent()
		:with_desc("CopilotChat: View/select prompt templates"),
	["n|<leader>am"] = map_cr("CopilotChatModels")
		:with_noremap()
		:with_silent()
		:with_desc("CopilotChat: View/select available models"),
}
