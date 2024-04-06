local lang = {}
lang["monaqa/dial.nvim"] = {
	keys = {
		{
			"<C-o>",
			function()
				return require("dial.map").inc_normal()
			end,
			expr = true,
			desc = "dial: Increment",
		},
		{
			"<C-i>",
			function()
				return require("dial.map").dec_normal()
			end,
			expr = true,
			desc = "dial: Decrement",
		},
	},
	config = function()
		local augend = require("dial.augend")
		require("dial.config").augends:register_group({
			default = {
				augend.integer.alias.decimal,
				augend.integer.alias.hex,
				augend.date.alias["%Y/%m/%d"],
				augend.constant.alias.bool,
				augend.semver.alias.semver,
				augend.constant.new({ elements = { "let", "const" } }),
			},
		})
	end,
}
return lang
