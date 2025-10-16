local bind = require("keymap.bind")
local map_cmd = bind.map_cmd
local map_cu = bind.map_cu
local map_callback = bind.map_callback

return {
	["n|<A-H>"] = map_cu("SmartCursorMoveLeft"):with_silent():with_noremap():with_desc("window: Focus left"),
	["n|<A-J>"] = map_cu("SmartCursorMoveDown"):with_silent():with_noremap():with_desc("window: Focus down"),
	["n|<A-K>"] = map_cu("SmartCursorMoveUp"):with_silent():with_noremap():with_desc("window: Focus up"),
	["n|<A-L>"] = map_cu("SmartCursorMoveRight"):with_silent():with_noremap():with_desc("window: Focus right"),
	["nv|<leader>w"] = map_cmd("<Cmd>HopWordMW<CR>"):with_noremap():with_desc("which_key_ignore"),
	["n|<leader>v"] = map_cu("vsplit"):with_noremap():with_desc("window: Vertical split"),
	-- 格式化选中代码
	["v|<A-=>"] = map_callback(function()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
			vim.lsp.buf.format({
				async = true,
				range = {
					["start"] = vim.api.nvim_buf_get_mark(0, "<"),
					["end"] = vim.api.nvim_buf_get_mark(0, ">"),
				},
			})
		end)
		:with_noremap()
		:with_silent()
		:with_desc("formatter: Format selected code"),
}
