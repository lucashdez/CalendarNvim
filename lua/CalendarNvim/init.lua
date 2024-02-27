local M = {}

function M.setup(opts)
	opts = opts or {}
	local buf = vim.api.nvim_create_buf(false, true)
	local p_height = math.abs(vim.api.nvim_win_get_height(0))
	local p_width = math.abs(vim.api.nvim_win_get_width(0))
	local width = p_width
	local height = p_height
	local opts = {
		relative = "editor",
		width = width,
		height = height,
		col = (p_width / 2) - (width / 2),
		row = (p_height / 2) - (height / 2),
		anchor = "NW",
		border = "rounded",
	}
	local win = vim.api.nvim_open_win(buf, true, opts)
	local someinput = vim.fn.input("File: ")
	print(someinput)
end

return M
