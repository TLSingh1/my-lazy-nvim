vim.notify = require("notify")

require("noice").setup({
	routes = {
		-- {
		--   view = "mini",
		--   filter = {
		--     error = true,
		--     find = "Error",
		--   }
		-- },
		-- {
		--   filter = {
		--     error = true,
		--     find = "written",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     error = true,
		--     find = "golangci",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     error = true,
		--     find = "toc",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     error = true,
		--     find = "assertion",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     error = true,
		--     find = "change",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     error = true,
		--     find = "tailwindcss",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     find = "diagnostics_on_open",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     find = "diagnostics",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   filter = {
		--     find = "line",
		--   },
		--   opts = { skip = true },
		-- },
		-- {
		--   view = "mini",
		--   filter = {
		--     find = "written",
		--   }
		-- },
		-- {
		--   view = "mini",
		--   filter = {
		--     find = "before",
		--   }
		-- },
		-- {
		--   view = "mini",
		--   filter = {
		--     find = "after",
		--   }
		-- },
		-- {
		--   view = "mini",
		--   filter = {
		--     find = "yanked",
		--   }
		-- },
		-- {
		--   view = "mini",
		--   filter = {
		--     find = "change",
		--   }
		-- },
		-- {
		--   view = "mini",
		--   filter = {
		--     find = "lines",
		--   }
		-- },
		-- {
		--   view = "notify",
		--   filter = {
		--     event = "msg_showmode",
		--   }
		-- },
	},

	views = {

		cmdline_popup = {
			border = {
				style = "none",
				padding = { 1, 2 },
			},
			filter_options = {},
			win_options = {
				winhighlight = {
					Normal = "TempFloat",
					Float = "TempFloat",
				},
				-- winhighlight = "NormalFloat:TempFloat,FloatBorder:TempFloatBorder",
				-- winhighlight = "NormalFloat:TempFloat,FloatBorder:TempFloatBorder",
			},
			position = {
				row = "50%",
				col = "50%",
			},
			size = {
				width = 40,
				height = "auto",
			},
		},
		popupmenu = {
			-- relative = "editor",
			position = {
				row = "70%",
				col = "50%",
			},
			size = {
				width = 40,
				height = "auto",
			},
			border = {
				padding = { 1, 2 },
			},
			win_options = {
				winhighlight = { Normal = "NormalFloat", FloatBorder = "FloatBorder" },
			},
		},

		-- cmdline_popup = {
		--     position = {
		--       row = "50%",
		--       col = "50%",
		--     },
		--     size = {
		--       width = 40,
		--       height = "auto"
		--     },
		-- 	border = {
		-- 		style = "none",
		-- 		padding = { 1, 2 },
		-- 	},
		-- 	filter_options = {},
		-- 	win_options = {
		-- 		winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
		-- 	},
		-- },
		--   popupmenu = {
		--     relative = "editor",
		--     position = {
		--       row = 20,
		--       col = "50%",
		--     },
		--     size = {
		--       width = 20,
		--       height = "auto",
		--     },
		--   }

		-- cmdline_popup = {
		--   position = {
		--     row = "50%",
		--     col = "50%",
		--   },
		--   size = {
		--     width = 40,
		--     height = "auto",
		--   },
		--   -- win_options = {
		--     -- winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
		--     -- winhighlight = { Normal = "ActiveWindow", FloatBorder = "DiagnosticInfo" },
		--   -- },
		-- },
		-- popupmenu = {
		-- relative = "editor",
		-- position = {
		--   row = "50%",
		--   col = "50%",
		-- },
		-- size = {
		--   width = 30,
		--   height = 30,
		-- },
		-- border = {
		--   style = "rounded",
		--   padding = { 0, 1 },
		-- },
		-- win_options = {
		--   winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
		--   -- winhighlight = { Normal = "ActiveWindow", FloatBorder = "DiagnosticInfo" },
		-- },
		-- },
	},
	messages = {
		enabled = true,
		view = "notify",
		view_error = "notify",
		view_warn = "notify",
		view_history = "messages",
		view_search = "virtualtext",
	},
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = true, -- use a classic bottom cmdline for search
		command_palette = false, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = true, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
})
