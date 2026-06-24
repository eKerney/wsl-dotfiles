return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<c-t>]],
			hide_numbers = true,
			autochdir = false,
			highlights = {
				Normal = {
					guibg = "#1e1e1e",
				},
				NormalFloat = {
					link = "Normal",
				},
				FloatBorder = {
					guibg = "#1e1e1e",
					guifg = "#4fc3f7",
				},
			},
			shade_terminals = true,
			shading_factor = -30,
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			persist_size = true,
			persist_mode = true,
			direction = "float",
			close_on_exit = true,
			clear_env = false,
			shell = vim.o.shell,
			auto_scroll = true,
			float_opts = {
				border = "curved",
				width = 90,
				height = 38,
				row = 1,
				col = 40,
				winblend = 16,
				zindex = 50,
				title_pos = "left",
			},
			winbar = {
				enabled = true,
				name_formatter = function(term)
					return term.name
				end,
			},
			responsiveness = {
				horizontal_breakpoint = 135,
			},
		})
	end,
}
