return function()
	local icons = {
		ui = require("modules.utils.icons").get("ui"),
		misc = require("modules.utils.icons").get("misc"),
	}

	require("which-key").add({
		{ "<leader>S", group = "Search" },
		{ "<leader>W", group = "Window" },
		{ "<leader>b", group = "Buffer" },
		{ "<leader>d", group = "Debug" },
		{ "<leader>f", group = "Fuzzy Find", icon = icons.ui.Telescope },
		{ "<leader>g", group = "Git" },
		{ "<leader>l", group = "Lsp", icon = icons.misc.LspAvailable },
		{ "<leader>n", group = "Nvim Tree", icon = icons.ui.FolderOpen },
		{ "<leader>p", group = "Package", icon = icons.ui.Package },
		{ "<leader>s", group = "Session" },
		{ "<leader>a", group = "Ai" },
	})

	require("modules.utils").load_plugin("which-key", {
		preset = "classic",
		delay = vim.o.timeoutlen,
		triggers = {
			{ "<auto>", mode = "nixso" },
		},
		plugins = {
			marks = true,
			registers = true,
			spelling = {
				enabled = true,
				suggestions = 20,
			},
			presets = {
				motions = false,
				operators = false,
				text_objects = true,
				windows = true,
				nav = true,
				z = true,
				g = true,
			},
		},

		win = {
			border = "none",
			padding = { 1, 2 },
			wo = { winblend = 0 },
		},
		expand = 1,
		icons = {
			group = "",
			-- rules = false,
			-- colors = false,
			breadcrumb = icons.ui.Separator,
			separator = icons.misc.Vbar,
			keys = {
				C = "C-",
				M = "A-",
				S = "S-",
				BS = "<BS> ",
				CR = "<CR> ",
				NL = "<NL> ",
				Esc = "<Esc> ",
				Tab = "<Tab> ",
				Up = "<Up> ",
				Down = "<Down> ",
				Left = "<Left> ",
				Right = "<Right> ",
				Space = "<Space> ",
				ScrollWheelUp = "<ScrollWheelUp> ",
				ScrollWheelDown = "<ScrollWheelDown> ",
			},
		},
	})
end
