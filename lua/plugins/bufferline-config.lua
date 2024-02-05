require("bufferline").setup({
	options = {
		themable = true,
		numbers = "none",
		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
		color_icons = true, -- whether or not to add the filetype icon highlights
		indicator = {
			icon = "",
			style = "icon",
		},
		-- buffer_close_icon = "",
		buffer_close_icon = '',
		modified_icon = "●",
		close_icon = "",
		-- close_icon = '',
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		tab_size = 20,
		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			if level == "error" then
				return " " .. count
			elseif level == "warning" then
				return " " .. count
			elseif level == "info" then
				return " " .. count
			elseif level == "hint" then
				return "💡" .. count
			else
				return ""
			end
		end,
		offsets = {
			{
				filetype = "neo-tree",
				text = "",
				text_align = "center",
				padding = 1,
				highlight = "ActiveWindow",
				separator = false,
			},
		},
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
	},
	highlights = {
		fill = {
			bg = "none",
		},
		background = {},
		tab = {},
		tab_selected = {},
		tab_separator = {},
		tab_separator_selected = {},
		tab_close = {},
		close_button = {},
		close_button_visible = {
			-- fg = "#fcb",
			bg = "#000000",
		},
		close_button_selected = {
			fg = "#1affff",
			bg = "#011826",
			bold = true,
		},
		buffer_visible = {
			-- fg = "#03fc62",
			bg = "#000000",
		},
		buffer_selected = {
			fg = "#FFFFFF",
			bg = "#011826",
			bold = true,
		},
		separator_selected = {
			fg = "#000000",
			bg = "#011826",
		},
		separator_visible = {
			fg = "#000000",
			bg = "#000000",
		},
		separator = {
			fg = "#000000",
		},
		modified = {
			fg = { attribute = "fg", highlight = "none" },
		},
		modified_selected = {
			fg = { attribute = "fg", highlight = "none" },
			bg = "#011826",
		},
		modified_visible = {
			fg = "#FFFFFF",
		},
		diagnostic = {},
		diagnostic_visible = {},
		diagnostic_selected = {
			bold = true,
			italic = true,
		},
		hint = {
			fg = "#44ffdd",
			bold = true,
		},
		hint_visible = {
			fg = "#44ffdd",
			bold = true,
		},
		hint_selected = {
			fg = "#44ffdd",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		hint_diagnostic = {
			fg = "#44ffdd",
		},
		hint_diagnostic_visible = {
			fg = "#44ffdd",
		},
		hint_diagnostic_selected = {
			fg = "#44ffdd",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		info = {
			fg = "#e344ff",
			bold = true,
		},
		info_visible = {
			fg = "#e344ff",
			bold = true,
		},
		info_selected = {
			fg = "#e344ff",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		info_diagnostic = {
			fg = "#e344ff",
		},
		info_diagnostic_visible = {
			fg = "#e344ff",
			bold = true,
		},
		info_diagnostic_selected = {
			fg = "#e344ff",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		warning = {
			fg = "#ffae44",
			bold = true,
		},
		warning_visible = {
			fg = "#ffae44",
			bold = true,
		},
		warning_selected = {
			bg = "#011826",
			bold = true,
			italic = true,
		},
		warning_diagnostic = {
			fg = "#ffae44",
		},
		warning_diagnostic_visible = {
			fg = "#ffae44",
			bold = true,
		},
		warning_diagnostic_selected = {
			fg = "#ffae44",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		error = {
			fg = "#FF4444",
			bold = true,
		},
		error_visible = {
			fg = "#FF4444",
			bold = true,
		},
		error_selected = {
			fg = "#FF4444",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		error_diagnostic = {
			fg = "#FF4444",
		},
		error_diagnostic_visible = {
			fg = "#FF4444",
		},
		error_diagnostic_selected = {
			fg = "#FF4444",
			bg = "#011826",
			bold = true,
			italic = true,
		},
	},
})

