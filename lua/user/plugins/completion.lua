local completion = {}
local prompts = {
	explain = { name = "解释代码", prompt = "请解释以下代码的作用与逻辑。" },
	optimize = {
		name = "优化代码",
		prompt = "请优化以下代码，使其更简洁、高效或可读性更强。",
	},
	comment = { name = "添加注释", prompt = "请为以下代码添加详细的中文注释。" },
	fix = { name = "修复问题", prompt = "请分析并修复以下代码中的潜在问题或错误。" },
	refactor = { name = "重构结构", prompt = "请重构以下代码，改进结构与命名。" },
	doc = {
		name = "生成文档",
		prompt = "请根据以下代码生成函数或模块说明文档，使用简体中文。",
	},
	commit = {
		name = "撰写提交信息",
		prompt = "请基于以下改动，生成符合 Conventional Commits 规范的中文提交信息。",
	},
	review = { name = "代码审查", prompt = "请对以下代码进行审查并提出改进建议。" },
}

completion["CopilotC-Nvim/CopilotChat.nvim"] = {
	branch = "main",
	build = "make tiktoken",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
		{ "nvim-telescope/telescope.nvim" },
		{ "zbirenbaum/copilot.lua" },
	},

	opts = {
		headers = {
			user = "## Channing ",
			assistant = "## Copilot ",
			error = "## Error ",
		},

		separator = "━━",
		auto_fold = true,
		auto_insert_mode = true,
		auto_follow_cursor = false,
		show_help = false,
		prompts = prompts,

		mappings = {
			complete = {
				detail = "Use @<Tab> or /<Tab> for options.",
				insert = "<Tab>",
			},
			close = {
				normal = "q",
				insert = "<C-c>",
			},
			reset = {
				normal = "<C-l>",
				insert = "<C-l>",
			},
			submit_prompt = {
				normal = "<CR>",
				insert = "<C-s>",
			},
			accept_diff = {
				normal = "<C-y>",
				insert = "<C-y>",
			},
			yank_diff = {
				normal = "gy",
			},
			show_diff = {
				normal = "gd",
			},
			show_info = {
				normal = "gc",
			},
			show_context = {
				normal = "gh",
			},
		},
	},

	config = function(_, opts)
		local chat = require("CopilotChat")
		local select = require("CopilotChat.select")

		opts.selection = select.unnamed

		opts.prompts.Commit = {
			prompt = "生成一条符合 Conventional Commits 规范的提交信息（中文），基于当前改动内容。",
			selection = select.gitdiff,
		}
		opts.prompts.CommitStaged = {
			prompt = "生成一条符合 Conventional Commits 规范的提交信息（中文），基于暂存区改动内容。",
			selection = function(source)
				return select.gitdiff(source, true)
			end,
		}

		chat.setup(opts)

		vim.api.nvim_create_user_command("CopilotChatVisual", function(args)
			chat.ask(args.args, { selection = select.visual })
		end, { nargs = "*", range = true })

		vim.api.nvim_create_user_command("CopilotChatInline", function(args)
			chat.ask(args.args, {
				selection = select.visual,
				window = {
					layout = "float",
					relative = "cursor",
					width = 1,
					height = 0.4,
					row = 1,
				},
			})
		end, { nargs = "*", range = true })

		vim.api.nvim_create_user_command("CopilotChatToggle", function()
			chat.toggle()
		end, {})

		vim.api.nvim_create_user_command("CopilotChatReset", function()
			chat.reset()
		end, {})

		vim.api.nvim_set_hl(0, "CopilotChatHeader", { fg = "#7C3AED", bold = true })
		vim.api.nvim_set_hl(0, "CopilotChatSeparator", { fg = "#374151" })
	end,
}

return completion
