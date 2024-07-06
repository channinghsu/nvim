return function()
	vim.defer_fn(function()
		require("modules.utils").load_plugin("copilot", {
			cmp = {
				enabled = true,
				method = "getCompletionsCycling",
			},
			panel = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = false,
			},
			suggestion = {
				enabled = true, -- 启用内联建议
				auto_trigger = true, -- 自动触发建议
				debounce = 75,
				keymap = {
					accept = "<M-l>", -- 接受建议的快捷键
					accept_word = false,
					accept_line = false,
					next = "<M-]>", -- 下一个建议
					prev = "<M-[>", -- 上一个建议
					dismiss = "<C-]>", -- 关闭建议
				},
			},
			filetypes = {
				["bigfile"] = false,
				["dap-repl"] = false,
				["fugitive"] = false,
				["fugitiveblame"] = false,
				["git"] = false,
				["gitcommit"] = false,
				["log"] = false,
				["toggleterm"] = false,
			},
		})
	end, 100)
end
