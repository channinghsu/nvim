local editor = {}

editor["folke/twilight.nvim"] = {}

editor["folke/zen-mode.nvim"] = {}
editor["max397574/better-escape.nvim"] = {
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = require("user.configs.editor.better-escape"),
}
return editor
