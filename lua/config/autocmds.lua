vim.api.nvim_exec(
	[[
  augroup NoSpell
    autocmd!
    autocmd FileType norg setlocal nospell
  augroup END
]],
	false
)

