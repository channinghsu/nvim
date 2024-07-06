return function()
	require("modules.utils").load_plugin("better_escape", {
		timeout = vim.o.timeoutlen,
		mappings = {
			-- 插入模式
			i = { j = { k = "<Esc>" } },
			-- 命令模式
			c = { j = { k = "<Esc>" } },
			-- 终端模式
			t = { j = { k = "<Esc>" } },
			-- 可视模式
			v = { j = { k = "<Esc>" } },
			-- 选择模式
			s = { j = { k = "<Esc>" } },
		},
	})
end
