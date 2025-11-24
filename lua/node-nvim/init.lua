local M = {}

function M.getCurrentNode()
	local current = vim.treesitter.get_node({ ignore_injections = false })
	if not current then return end -- Handle case where no node is found
	local start_row, start_col, end_row, end_col = current:range()

	vim.api.nvim_win_set_cursor(0, { start_row + 1, start_col })
	vim.cmd("normal! v")
	end_row = end_row + 1
	if end_row > vim.api.nvim_buf_line_count(0) then
		end_row = vim.api.nvim_buf_line_count(0)
		local last = vim.api.nvim_buf_get_lines(0, end_row - 1, end_row, true)[1]
		end_col = #last
	end
	vim.api.nvim_win_set_cursor(0, { end_row, end_col - 1 })
end

function M.getCurrentNodeVisual()
	local current = vim.treesitter.get_node({ ignore_injections = false })
	if not current then return end -- Handle case where no node is found
	local start_row, start_col, end_row, end_col = current:range()

	vim.api.nvim_win_set_cursor(0, { start_row + 1, start_col })
	vim.cmd("normal! o")
	end_row = end_row + 1
	if end_row > vim.api.nvim_buf_line_count(0) then
		end_row = vim.api.nvim_buf_line_count(0)
		local last = vim.api.nvim_buf_get_lines(0, end_row - 1, end_row, true)[1]
		end_col = #last
	end
	vim.api.nvim_win_set_cursor(0, { end_row, end_col - 1 })
end

return M
