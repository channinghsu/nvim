return function()
	require("modules.utils").load_plugin("better_escape", {
		timeout = vim.o.timeoutlen,
		default_mappings = false,
		mappings = {
			i = { j = { k = false } },
			c = { j = { k = "<Esc>" } },
			t = { j = { k = "<Esc>" } },
			v = { j = { k = false } },
			s = { j = { k = "<Esc>" } },
		},
	})
end
