local function setup_toggleterm_highlight()
  vim.opt.winhighlight = "Normal:ActiveWindow"
  vim.api.nvim_command('highlight FloatBorder guifg=#011826 guibg=#011826')
end

require("toggleterm").setup({
  open_mapping = [[<M-;>]],
  direction = "float",
  on_open = setup_toggleterm_highlight,
  shell = "fish",
  float_opts = {
    border = 'curved',
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

local Terminal = require('toggleterm.terminal').Terminal
-- local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })
local gitui    = Terminal:new({ cmd = "gitui", hidden = true })

-- function _lazygit_toggle()
--   lazygit:toggle()
-- end

function _gitui_toggle()
  gitui:toggle()
end

vim.api.nvim_set_keymap("n", "<C-;>", "<cmd>lua _gitui_toggle()<CR>", { noremap = true, silent = true })
--[[ vim.api.nvim_set_keymap("n", "<C-;>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true }) ]]
