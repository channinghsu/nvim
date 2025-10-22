local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_callback = bind.map_callback

return {
	["n|<leader>av"] = map_cr("CopilotChatToggle")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 切换 Copilot Chat 窗口"),
	["n|<leader>ar"] = map_cr("CopilotChatReset")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 重置对话历史"),
	["n|<leader>as"] = map_cr("CopilotChatStop")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 停止当前响应"),
	["n|<leader>al"] = map_cr("CopilotChatLoad")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 加载历史对话"),
	["n|<leader>aS"] = map_cr("CopilotChatSave")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 保存当前对话"),
	["n|<leader>aP"] = map_cr("CopilotChatModels")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 选择 AI 模型"),
	["n|<leader>ap"] = map_cr("CopilotChatPrompts")
		:with_silent()
		:with_noremap()
		:with_desc("AI: 选择 Prompt 模板"),
	["n|<leader>ae"] = map_cr("CopilotChatExplain")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 解释选中代码"),
	["v|<leader>ae"] = map_cr("CopilotChatExplain")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 解释选中代码"),
	["n|<leader>aR"] = map_cr("CopilotChatReview")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 审查选中代码"),
	["v|<leader>aR"] = map_cr("CopilotChatReview")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 审查选中代码"),
	["n|<leader>af"] = map_cr("CopilotChatFix")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 修复代码问题"),
	["v|<leader>af"] = map_cr("CopilotChatFix")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 修复代码问题"),
	["n|<leader>ao"] = map_cr("CopilotChatOptimize")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 优化选中代码"),
	["v|<leader>ao"] = map_cr("CopilotChatOptimize")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 优化选中代码"),
	["n|<leader>ad"] = map_cr("CopilotChatDocs")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 生成文档"),
	["v|<leader>ad"] = map_cr("CopilotChatDocs")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 生成文档"),
	["n|<leader>at"] = map_cr("CopilotChatTests")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 编写单元测试"),
	["v|<leader>at"] = map_cr("CopilotChatTests")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 编写单元测试"),
	["n|<leader>ac"] = map_cr("CopilotChatCommit")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 生成 Commit 信息（中文）"),
	["n|<leader>aC"] = map_cr("CopilotChatCommitStaged")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 生成暂存区 Commit（中文）"),
	["n|<leader>aF"] = map_cr("CopilotChatFixDiagnostic")
		:with_noremap()
		:with_silent()
		:with_desc("AI: 修复诊断错误"),
	["n|<leader>aq"] = map_callback(function()
			local input = vim.fn.input("Ask Copilot: ")
			if input ~= "" then
				require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
			end
		end)
		:with_noremap()
		:with_silent()
		:with_desc("AI: 自定义提问（全文件）"),
	["v|<leader>aq"] = map_callback(function()
			local input = vim.fn.input("Ask Copilot: ")
			if input ~= "" then
				require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
			end
		end)
		:with_noremap()
		:with_silent()
		:with_desc("AI: 自定义提问（选中）"),
}
