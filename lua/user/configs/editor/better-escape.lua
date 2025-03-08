return function()
	require("modules.utils").load_plugin("better_escape", {
		timeout = vim.o.timeoutlen,
		mappings = {
			i = { j = { k = "<Esc>" } },
			c = { j = { k = "<Esc>" } },
			t = { j = { k = "<Esc>" } },
			v = { j = { k = "<Esc>" } },
			s = { j = { k = "<Esc>" } },
		},
	})
end
