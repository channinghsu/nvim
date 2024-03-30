return function()
	require("modules.utils").load_plugin("tokyonight", {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	})
end
