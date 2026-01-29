return function()
	vim.api.nvim_set_option_value("indentexpr", "v:lua.require'nvim-treesitter'.indentexpr()", {})

	-- Setup nvim-treesitter config with proper install directory
	require("nvim-treesitter").setup({
		install_dir = vim.fn.stdpath("data") .. "/site",
	})
end
