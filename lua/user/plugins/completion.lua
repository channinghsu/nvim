local completion = {}
local IS_DEV = false

--- Get all the changes in the git repository
---@param staged? boolean
---@return string
local function get_git_diff(staged)
	local cmd = staged and "git diff --staged" or "git diff"
	local handle = io.popen(cmd)
	if not handle then
		return ""
	end

	local result = handle:read("*a")
	handle:close()
	return result
end

local prompts = {
	--    Explain = "Please explain how the following code works.",
	-- Review = "Please review the following code and provide suggestions for improvement.",
	-- Tests = "Please explain how the selected code works, then generate unit tests for it.",
	-- Refactor = "Please refactor the following code to improve its clarity and readability.",
	-- FixCode = "Please fix the following code to make it work as intended.",
	-- FixError = "Please explain the error in the following text and provide a solution.",
	-- BetterNamings = "Please provide better names for the following variables and functions.",
	-- Documentation = "Please provide documentation for the following code.",
	-- SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
	-- SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
	-- -- Text related prompts
	-- Summarize = "Please summarize the following text.",
	-- Spelling = "Please correct any grammar and spelling errors in the following text.",
	-- Wording = "Please improve the grammar and wording of the following text.",
	-- Concise = "Please rewrite the following text to make it more concise.",
	Explain = "请详细阐述以下代码段的执行逻辑和功能。",
	Review = "请对以下代码段进行评审，并提供性能优化、代码风格改进等方面的建议。",
	Tests = "请详细说明选定代码段的运作机制，并为其编写单元测试用例以确保代码的正确性和稳定性。",
	Refactor = "请对以下代码段进行重构，通过改进代码结构和命名规范，提高代码的可维护性和可读性。",
	FixCode = "请修正以下代码段中存在的问题，确保其能够按照设计意图正确执行。",
	FixError = "请分析并解释以下文本中存在的编程错误，并提供相应的修复方案。",
	BetterNamings = "请为以下代码段中的变量和函数提供更具描述性和符合命名规范的命名，以增强代码的自解释能力。",
	Documentation = "请为以下代码段编写技术文档，包括功能描述、参数说明、返回值、异常处理等详细信息。",
	SwaggerApiDocs = "请使用Swagger规范为以下API生成标准、详细的API文档，包括路径、操作、参数、响应等信息。",
	SwaggerJsDocs = "请使用Swagger为以下JavaScript API编写详细的JSDoc注释，以提供清晰的API使用说明和代码示例。",
	-- 文本相关的提示
	Summarize = "请对以下文本进行概括，提取关键信息并简明扼要地呈现主要内容。",
	Spelling = "请校对以下文本，纠正其中的语法错误和拼写错误，确保文本的专业性和准确性。",
	Wording = "请优化以下文本的措辞和表达，提高其清晰度和专业性，同时保持语言的流畅性。",
	Concise = "请将以下文本改写为更加简洁明了的形式，去除冗余信息，同时保留必要的技术细节和关键概念。",
	Optimize = "将所选定的代码段进行细致的优化处理，目的是在于提升代码的执行效率以及增强代码的可读性。",
}

completion["CopilotC-Nvim/CopilotChat.nvim"] = {
	branch = "canary",
	dependencies = {
		{ "nvim-telescope/telescope.nvim" }, -- Use telescope for help actions
		{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	opts = {
		model = "gpt-4",
		show_help = false,
		prompts = prompts,
		debug = false, -- Set to true to see response from Github Copilot API. The log file will be in ~/.local/state/nvim/CopilotChat.nvim.log.
		disable_extra_info = "no", -- Disable extra information (e.g: system prompt, token count) in the response.
		hide_system_prompt = "yes", -- Show user prompts only and hide system prompts.
		proxy = "", -- Proxies requests via https or socks
		language = "Chinese",
	},
	build = function()
		vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
	end,
	event = "VeryLazy",
	keys = {
		-- Code related commands
		{ "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
		{ "<leader>at", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
		{ "<leader>ar", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
		{ "<leader>aR", "<cmd>CopilotChatRefactor<cr>", desc = "CopilotChat - Refactor code" },
		{
			"<leader>ao",
			"<cmd>CopilotChatOptimize<cr>",
			mode = "x",
			desc = "CopilotChat - Optimize the selected code to improve performance and readablilty",
		},
		{ "<leader>an", "<cmd>CopilotChatBetterNamings<cr>", desc = "CopilotChat - Better Naming" },
		-- Chat with Copilot in visual mode
		{ "<leader>av", ":CopilotChatVisual", mode = "x", desc = "CopilotChat - Open in vertical split" },
		-- Custom input for CopilotChat
		{
			"<leader>ai",
			function()
				local input = vim.fn.input("Ask Copilot: ")
				if input ~= "" then
					vim.cmd("CopilotChat " .. input)
				end
			end,
			desc = "CopilotChat - Ask input",
		},
		{ "<leader>am", "<cmd>CopilotChatCommit<cr>", desc = "CopilotChat - Generate commit message for all change" },
		{
			"<leader>aM",
			"<cmd>CopilotChatCommitStaged<cr>",
			desc = "CopilotChat - Generate commit message for staged changes",
		},
		-- Quick chat with Copilot
		{
			"<leader>aq",
			function()
				local input = vim.fn.input("Quick Chat: ")
				if input ~= "" then
					require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
				end
			end,
			desc = "CopilotChat - Quick chat",
		},
		-- Debug
		{ "<leader>ad", "<cmd>CopilotChatDebugInfo<cr>", desc = "CopilotChat - Debug Info" },
		-- Fix the issue with diagnostic
		{ "<leader>af", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChat - Fix Diagnostic" },
		{ "<leader>aF", "<cmd>CopilotChatFixError<cr>", desc = "CopilotChat - Fix Error" },
		-- Clear buffer and chat history
		{ "<leader>al", "<cmd>CopilotChatReset<cr>", desc = "CopilotChat - Clear buffer and chat history" },
		-- Toggle Copilot Chat Vsplit
		{ "<leader>av", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Toggle Vsplit" },
	},
}
return completion
