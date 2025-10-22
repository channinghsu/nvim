local completion = {}

completion["CopilotC-Nvim/CopilotChat.nvim"] = {
	branch = "main",
	build = "make tiktoken",
	lazy = true,
	cmd = {
		"CopilotChat",
		"CopilotChatOpen",
		"CopilotChatClose",
		"CopilotChatToggle",
		"CopilotChatStop",
		"CopilotChatReset",
		"CopilotChatSave",
		"CopilotChatLoad",
		"CopilotChatDebugInfo",
		"CopilotChatExplain",
		"CopilotChatReview",
		"CopilotChatFix",
		"CopilotChatOptimize",
		"CopilotChatDocs",
		"CopilotChatTests",
		"CopilotChatFixDiagnostic",
		"CopilotChatCommit",
		"CopilotChatCommitStaged",
		"CopilotChatModels",
		"CopilotChatModel",
		"CopilotChatAgent",
		"CopilotChatAgents",
	},
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
		{ "nvim-telescope/telescope.nvim" },
		{ "zbirenbaum/copilot.lua" },
	},
	config = require("user.configs.completion.copilot-chat"),
}

return completion
