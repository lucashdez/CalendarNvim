vim.api.nvim_create_user_command("CalendarNvim", function()
	require("CalendarNvim").setup(opts)
end, {})
