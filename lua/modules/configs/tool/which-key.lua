return function()
	local icons = {
		ui = require("modules.utils.icons").get("ui"),
		misc = require("modules.utils.icons").get("misc"),
		git = require("modules.utils.icons").get("git", true),
		cmp = require("modules.utils.icons").get("cmp", true),
		aichat = require("modules.utils.icons").get("aichat", true),
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
		spec = {
			{ "<leader>g", group = icons.git.Git .. "Git" },
			{ "<leader>d", group = icons.ui.Bug .. " Debug" },
			{ "<leader>s", group = icons.cmp.tmux .. "Session" },
			{ "<leader>b", group = icons.ui.Buffer .. " Buffer" },
			{ "<leader>S", group = icons.ui.Search .. " Search" },
			{ "<leader>W", group = icons.ui.Window .. " Window" },
			{ "<leader>p", group = icons.ui.Package .. " Package" },
			{ "<leader>l", group = icons.misc.LspAvailable .. " Lsp" },
			{ "<leader>f", group = icons.ui.Telescope .. " Fuzzy Find" },
			{ "<leader>n", group = icons.ui.FolderOpen .. " Nvim Tree" },
			{ "<leader>c", group = icons.aichat.Chat .. " Chat" },
		},
	})
end
