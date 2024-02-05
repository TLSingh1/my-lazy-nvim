require("neorg").setup({
	load = {
		["core.defaults"] = {}, -- Loads default behaviour
		["core.itero"] = {},
		["core.presenter"] = {
      config = {
        zen_mode = "zen-mode"
      },
    },
		["core.keybinds"] = {
			config = {
				hook = function(keybinds)
					keybinds.unmap("norg", "n", "<LocalLeader>li")
					keybinds.remap_key("norg", "n", "<LocalLeader>lt", "<LocalLeader>nL")
					keybinds.remap_key("norg", "i", "<M-CR>", "<S-CR>")
				end,
			},
		},
		["core.concealer"] = {
			config = {
				icon_preset = "varied",
				icons = {
					code_block = {
						conceal = true,
						content_only = true,
						highlight = "CursorLine",
					},
				},
			},
		}, -- Adds pretty icons to your documents
		["core.dirman"] = { -- Manages Neorg workspaces
			config = {
				workspaces = {
					brain = "~/Brain",
					fleeting = "~/Brain/100 Fleeting Notes",
					literature = "~/Brain/200 Literature Notes",
					professional = "~/Brain/300 Professional",
					personal = "~/Brain/400 Personal",
					princeton = "~/Brain/500 Princeton",
					science = "~/Brain/600 Science",
					software = "~/Brain/700 Software Eng",
					technology = "~/Brain/800 Technology",
				},
				index = "index.norg",
			},
		},
		["core.esupports.metagen"] = {
			config = {
				type = "auto",
			},
		},
		["core.completion"] = {
			config = {
				engine = "nvim-cmp",
				name = "[Neorg]",
			},
		},
	},
})
