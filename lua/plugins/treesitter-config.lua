require("nvim-treesitter.configs").setup({
	ensure_installed = {"lua", "typescript", "tsx", "rust"},
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = { 
		enable = true, 
		disable = { "python", "css" }
	},
})
