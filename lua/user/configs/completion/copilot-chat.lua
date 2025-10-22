return function()
	local chat = require("CopilotChat")
	local select = require("CopilotChat.select")

	local prompts = {
		Explain = {
			name = "💡 解释代码",
			prompt = "请详细解释以下代码的作用、逻辑和工作原理。如果涉及复杂算法，请分步骤说明。使用简体中文回答。",
		},
		Analyze = {
			name = "🔍 深度分析",
			prompt = "请深入分析以下代码：\n1. 代码结构和设计模式\n2. 潜在的性能问题\n3. 安全性考虑\n4. 可维护性评估\n\n使用简体中文详细回答。",
		},
		Review = {
			name = "👀 代码审查",
			prompt = "请作为资深工程师审查以下代码，使用简体中文指出：\n1. 代码质量问题\n2. 潜在 bug\n3. 改进建议\n4. 最佳实践建议\n5. 安全隐患",
		},
		Optimize = {
			name = "⚡ 优化代码",
			prompt = "请优化以下代码，重点关注：\n1. 性能提升（降低时间/空间复杂度）\n2. 代码简洁性和可读性\n3. 去除冗余逻辑\n\n请给出优化后的完整代码，并用简体中文说明改进点。",
		},
		Refactor = {
			name = "🔧 重构代码",
			prompt = "请重构以下代码，改进其结构、命名和组织方式，使其更符合最佳实践和设计原则（如 SOLID、DRY 等）。给出重构后的完整代码，并用简体中文解释改进之处。",
		},
		Simplify = {
			name = "✨ 简化代码",
			prompt = "请简化以下代码，去除不必要的复杂性和冗余逻辑，使代码更加简洁明了，但保持功能完整。用简体中文说明简化思路。",
		},
		Modernize = {
			name = "🚀 现代化改造",
			prompt = "请使用现代的语言特性、最新 API 和语法糖重写以下代码。充分利用语言的新特性提升代码质量。用简体中文说明使用的新特性。",
		},
		Fix = {
			name = "🐛 修复问题",
			prompt = "请分析并修复以下代码中的潜在问题、错误和 bug。给出修复后的代码，并用简体中文详细解释：\n1. 发现的问题\n2. 问题成因\n3. 修复方案",
		},
		FixDiagnostic = {
			name = "🩺 修复诊断错误",
			prompt = "请根据诊断信息修复以下代码的错误。给出修复后的完整代码，并用简体中文解释修复方法。",
			selection = select.diagnostics,
		},
		BugReport = {
			name = "🐞 生成 Bug 报告",
			prompt = "请为以下代码中的问题生成详细的 Bug 报告，包括：\n1. 问题描述\n2. 复现步骤\n3. 预期行为\n4. 实际行为\n5. 可能的解决方案\n\n使用简体中文。",
		},
		Tests = {
			name = "🧪 编写单元测试",
			prompt = "请为以下代码编写完整的单元测试，包括：\n1. 正常情况测试\n2. 边界情况测试\n3. 异常情况测试\n4. Mock 和 Stub（如需要）\n\n测试代码要清晰易懂，用简体中文添加注释。",
		},
		TestCoverage = {
			name = "📊 提高测试覆盖率",
			prompt = "请分析以下代码的测试覆盖情况，并补充遗漏的测试用例，确保覆盖所有分支和边界情况。用简体中文说明补充的测试用例。",
		},
		Comment = {
			name = "📝 添加注释",
			prompt = "请为以下代码添加详细的简体中文注释，包括：\n1. 文件/模块顶部说明\n2. 函数/类的用途和职责\n3. 参数说明（类型、含义、约束）\n4. 返回值说明\n5. 关键逻辑的行内注释\n6. 复杂算法的步骤说明",
		},
		Docs = {
			name = "📚 生成 API 文档",
			prompt = "请根据以下代码生成完整的 API 文档，包括：\n1. 功能概述\n2. 函数/方法签名\n3. 参数详细说明（类型、默认值、是否必需）\n4. 返回值说明\n5. 抛出的异常\n6. 使用示例（至少 2 个）\n7. 注意事项和最佳实践\n\n使用简体中文，格式清晰。",
		},
		Readme = {
			name = "📖 生成 README",
			prompt = "请为以下代码/项目生成详细的 README.md 文档，包括：\n1. 项目简介和特性\n2. 快速开始（安装、配置）\n3. 使用示例和教程\n4. API 文档\n5. 配置选项说明\n6. 常见问题（FAQ）\n7. 贡献指南\n8. 许可证信息\n\n使用简体中文，Markdown 格式。",
		},
		Commit = {
			name = "📦 生成 Commit 信息",
			prompt = "请基于以下 git diff 改动，生成符合 Conventional Commits 规范的简体中文提交信息。\n\n格式要求：\n<type>(<scope>): <subject>\n\n<body>\n\n<footer>\n\n其中：\n- type: feat(新功能)/fix(修复)/docs(文档)/style(格式)/refactor(重构)/perf(性能)/test(测试)/chore(构建)\n- scope: 影响范围（可选）\n- subject: 简短描述（不超过50字）\n- body: 详细说明（可选，说明改动原因和内容）\n- footer: 关联 issue 或 breaking changes（可选）\n\n示例：\nfeat(auth): 添加 JWT 认证功能\n\n实现了基于 JWT 的用户认证系统，包括：\n- 登录接口\n- Token 生成和验证\n- 刷新 Token 机制\n\nCloses #123",
			selection = select.gitdiff,
		},
		CommitStaged = {
			name = "📦 生成暂存区 Commit",
			prompt = "请基于暂存区（staged）的改动，生成符合 Conventional Commits 规范的简体中文提交信息。\n\n格式：<type>(<scope>): <subject>\n\n要求：\n- 使用简体中文\n- 准确描述改动内容\n- 如有多个改动，用列表说明\n- subject 简洁明了（不超过50字）",
			selection = function(source)
				return select.gitdiff(source, true)
			end,
		},
		Changelog = {
			name = "📋 生成变更日志",
			prompt = "请根据以下代码改动，生成清晰的变更日志（Changelog），使用简体中文。\n\n格式要求：\n## [版本号] - 日期\n\n### 新增（Added）\n- 新功能1\n- 新功能2\n\n### 修改（Changed）\n- 改进项1\n- 改进项2\n\n### 修复（Fixed）\n- 修复的 bug 1\n- 修复的 bug 2\n\n### 删除（Removed）\n- 移除的功能1",
		},
		Translate = {
			name = "🌐 语言转换",
			prompt = "请将以下代码转换为指定的编程语言，保持功能完全一致。\n\n要求：\n1. 使用目标语言的惯用写法\n2. 添加必要的类型声明\n3. 保持代码风格一致\n4. 用简体中文说明转换过程中的关键点和注意事项\n\n请问要转换到什么语言？",
		},
		TypeScript = {
			name = "🔷 添加 TypeScript 类型",
			prompt = "请为以下 JavaScript 代码添加完整的 TypeScript 类型注解，包括：\n1. 函数参数和返回值类型\n2. 接口（Interface）定义\n3. 类型别名（Type Alias）\n4. 泛型（如适用）\n5. 枚举（如适用）\n\n用简体中文注释复杂类型的含义。",
		},
		Learn = {
			name = "🎓 教学讲解",
			prompt = "请用教学的方式详细讲解以下代码，假设读者是初学者。\n\n讲解要求：\n1. 用简单易懂的简体中文\n2. 解释每个部分的作用和原理\n3. 说明为什么这样写\n4. 指出学习重点和难点\n5. 给出相关的知识点扩展\n6. 提供练习建议",
		},
		Example = {
			name = "💼 使用示例",
			prompt = "请为以下代码/函数提供 3-5 个实际使用示例，覆盖：\n1. 基础用法\n2. 常见场景\n3. 高级用法\n4. 边界情况处理\n5. 与其他功能的组合使用\n\n每个示例都要有简体中文说明和完整可运行的代码。",
		},
		Playground = {
			name = "🎮 交互式示例",
			prompt = "请创建一个交互式的代码示例（playground），展示以下代码的使用方法。包含多个场景和用户可以调整的参数。用简体中文注释。",
		},
		Security = {
			name = "🔒 安全审查",
			prompt = "请从安全角度全面审查以下代码，识别潜在的安全漏洞和风险，包括但不限于：\n1. 注入攻击（SQL、NoSQL、命令注入等）\n2. XSS（跨站脚本攻击）\n3. CSRF（跨站请求伪造）\n4. 认证和授权问题\n5. 敏感信息泄露\n6. 不安全的加密/哈希\n7. 路径遍历攻击\n8. DoS 攻击风险\n\n对每个问题给出：\n- 问题描述\n- 风险等级（高/中/低）\n- 修复建议\n- 安全的代码示例\n\n使用简体中文。",
		},
		Performance = {
			name = "📊 性能分析",
			prompt = "请详细分析以下代码的性能特征：\n1. 时间复杂度（Big O 分析）\n2. 空间复杂度\n3. 性能瓶颈识别\n4. 是否存在不必要的计算或内存分配\n5. 并发/并行优化可能性\n6. 缓存优化建议\n\n给出优化方案和优化后的代码。使用简体中文。",
		},
		Benchmark = {
			name = "⏱️ 性能测试",
			prompt = "请为以下代码编写性能基准测试（benchmark），比较不同实现方式的性能差异。用简体中文说明测试方法和结果分析。",
		},
		Architecture = {
			name = "🏗️ 架构分析",
			prompt = "请分析以下代码的架构设计，包括：\n1. 设计模式的使用\n2. 模块间的耦合度\n3. 可扩展性\n4. 可测试性\n5. 改进建议\n\n使用简体中文。",
		},
		SQL = {
			name = "💾 SQL 优化",
			prompt = "请优化以下 SQL 查询，包括：\n1. 索引优化建议\n2. 查询语句重写\n3. 执行计划分析\n4. 性能提升预估\n\n使用简体中文说明。",
		},
	}

	local opts = {
		temperature = 0.1,
		question_header = "## 👤 Channing ",
		answer_header = "## 🤖 Copilot ",
		error_header = "## ❌ Error ",
		separator = "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
		show_help = false,
		show_folds = true,
		highlight_selection = true,
		context = nil,
		history_path = vim.fn.stdpath("data") .. "/copilotchat_history",
		prompts = prompts,
		auto_follow_cursor = false,
		auto_insert_mode = true,
		clear_chat_on_new_prompt = false,
		selection = select.unnamed,
		window = {
			layout = "vertical",
			width = 0.4,
			height = 0.6,
			relative = "editor",
			border = "rounded",
			title = "Copilot Chat",
		},
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
				register = '"',
			},
			show_diff = {
				normal = "gd",
			},
			show_info = {
				normal = "gi",
			},
			show_context = {
				normal = "gc",
			},
		},
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

	vim.api.nvim_create_user_command("CopilotChatBuffer", function(args)
		chat.ask(args.args, { selection = select.buffer })
	end, { nargs = "*" })

	vim.api.nvim_create_user_command("CopilotChatExplain", function(args)
		chat.ask("请详细解释这段代码", { selection = select.visual })
	end, { range = true })

	vim.api.nvim_create_user_command("CopilotChatReview", function(args)
		chat.ask("请审查这段代码", { selection = select.visual })
	end, { range = true })

	vim.api.nvim_create_user_command("CopilotChatFix", function(args)
		chat.ask("请修复这段代码的问题", { selection = select.visual })
	end, { range = true })

	vim.api.nvim_create_user_command("CopilotChatOptimize", function(args)
		chat.ask("请优化这段代码", { selection = select.visual })
	end, { range = true })

	vim.api.nvim_create_user_command("CopilotChatTests", function(args)
		chat.ask("请为这段代码编写单元测试", { selection = select.visual })
	end, { range = true })

	vim.api.nvim_create_user_command("CopilotChatCommit", function(args)
		chat.ask(
			"请为以下改动生成符合 Conventional Commits 规范的英文提交信息",
			{ selection = select.gitdiff }
		)
	end, {})

	vim.api.nvim_create_user_command("CopilotChatCommitStaged", function(args)
		chat.ask("请为暂存区改动生成英文提交信息", {
			selection = function(source)
				return select.gitdiff(source, true)
			end,
		})
	end, {})

	vim.api.nvim_set_hl(0, "CopilotChatHeader", { fg = "#7C3AED", bold = true })
	vim.api.nvim_set_hl(0, "CopilotChatSeparator", { fg = "#4B5563" })
	vim.api.nvim_set_hl(0, "CopilotChatSpinner", { fg = "#F59E0B" })
	vim.api.nvim_set_hl(0, "CopilotChatHelp", { fg = "#6B7280", italic = true })
end
