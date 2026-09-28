local ts_pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()

return {
	pre_hook = function(ctx)
		if vim.bo.filetype == "xml" then
			return "<!-- %s -->"
		end

		return ts_pre_hook(ctx) or vim.bo.commentstring
	end,
}
