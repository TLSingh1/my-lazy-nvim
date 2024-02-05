local api = vim.api

api.nvim_create_autocmd("ColorScheme", {
	callback = vim.schedule_wrap(function()
		-- vim.cmd([[highlight IndentBlanklineIndent1 guifg=#613b5d gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent2 guifg=#2c396b gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent3 guifg=#3b6161 gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent4 guifg=#595846 gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineContextStart guisp=#FCA7EA]])

		-- Active/Inactive windows
		vim.cmd("highlight ActiveWindow guibg=#011826")
		vim.cmd("highlight InactiveWindow guibg=#000000")
		vim.cmd("highlight TempFloat guibg=#0B2534")
		-- vim.cmd("highlight ActiveSignColumn guibg=#011826")

		-- Active/Inactive winbar
		vim.cmd("hi WinBar guibg=#011826")
		vim.cmd("hi WinBarNC guibg=#000000")


		-- Line Number
		vim.cmd([[highlight LineNrAbove guifg=#011826]])
		vim.cmd([[highlight LineNrBelow guifg=#011826]])

		-- Rnvimr
		-- vim.cmd("hi RnvimrCurses guifg=#4d7277 guibg=#011826")

		-- Dashboard
		-- vim.cmd("hi DashboardHeader guifg=#FFD54F")

		-- Cursor Line
		vim.cmd("hi CursorLine guibg=#162e35")

		-- Folds
		vim.cmd("hi Folded guibg=#162e35 guifg=#1affff")

		-- FoldColumn
		vim.cmd("hi FoldColumn guifg=#011826")

		-- Normal Float
		vim.cmd("hi NormalFloat guifg=#1affff guibg=#011826")
		-- Float Border
		vim.cmd("hi FloatBorder guifg=#011826 guibg=#011826")

		-- Neo Tree
		vim.cmd("highlight NeoTreeTabActive guifg=#1affff guibg=#011826")
		vim.cmd("hi NeoTreeWinSeparator guifg=#011826 guibg=#011826")
		vim.cmd("hi NeoTreeGitStaged guifg=#1aff94")
		vim.cmd("hi NeoTreeFloatTitle guifg=#011826 guibg=#011826")
		vim.cmd("hi NeoTreeFloatBorder guifg=#011826 guibg=#011826")
		vim.cmd("hi NeoTreeNormal guibg=#011826")

		-- Symbols Outline
		-- vim.cmd("hi FocusedSymbol guifg=#1affff guibg=#00363C")

		-- SpellBad
		vim.cmd("hi SpellBad gui=underline guisp=#FFC777")

		-- Buffer line ?
		vim.cmd("highlight BufferTabpageFill guibg=#000000")
		vim.cmd("highlight BufferCurrent guifg=#1AFFFF guibg=#00363C")
		vim.cmd("highlight BufferVisible  guibg=#011826")
		vim.cmd("highlight BufferInactive guibg=#011826")
		vim.cmd("highlight BufferCurrentSign guibg=#000000")
		vim.cmd("highlight BufferVisibleSign guibg=#000000")
		vim.cmd("highlight BufferInactiveSign guibg=#000000")

		-- Buffer line
		vim.cmd("hi BufferLineSeparator guifg=#011826 guibg=#000000")

		-- Wilder Command Line
		-- vim.cmd("hi WilderPrompt guifg=#FFFFFF")
		-- vim.cmd("hi WilderBorder guifg=#1affff")
		-- vim.cmd("hi WilderDefault guifg=#80A0FF")
		-- vim.cmd("hi WilderSelected guifg=#1affff guibg=#244C58")

		-- Harpoon Menu
		-- vim.cmd("hi HarpoonBorder guifg=#1affff guibg=#011826")
		-- vim.cmd("hi HarpoonWindow guibg=#011826")

		-- General UI
		vim.cmd("hi EndOfBuffer guifg=#011826")
		vim.cmd("hi MsgSeparator guibg=#000000")
		vim.cmd("hi Pmenu guibg=#000000")
		vim.cmd("hi PmenuSel guifg=#1affff guibg=#244C58")
		vim.cmd("hi PmenuSbar guibg=#000000")
		vim.cmd("hi PmenuThumb guibg=#174B6B")

		-- Diagnostics ***I am probably repeating these highlights***
		vim.cmd("hi DiagnosticInfo guifg=#4FD6BE")
	end),
	group = vim.api.nvim_create_augroup("foo", {}),
})


local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	completeopt = { "menuone", "noselect" },
	conceallevel = 3,
	fileencoding = "utf-8",
	hlsearch = false,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	signcolumn = "yes",
	wrap = true,
	scrolloff = 8,
	spell = true,
	spellsuggest = "10",
	laststatus = 3,
	breakindent = true,
  breakindentopt = "shift:2,min:40,sbr",
  linebreak = true,
	winbar = " ",
	winhighlight = "Normal:ActiveWindow,NormalNC:InactiveWindow",
	-- foldcolumn = "1",
	foldlevel = 99, -- Using ufo provider need a large value, feel free to decrease the value
	foldenable = true,
	foldlevelstart = 99,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
