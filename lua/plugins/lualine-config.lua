-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#000000',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Define the symbols for cursor location based on percentage
local cursor_symbols = {
  "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"
}

-- Function to get cursor location symbol based on buffer percentage
local function cursor_location()
  local current_line = vim.fn.line('.')
  local total_lines = vim.fn.line('$')
  local percentage = math.floor((current_line / total_lines) * 100)
  local index = math.floor((percentage / 100) * (#cursor_symbols - 1)) + 1
  return cursor_symbols[index]
end

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    disabled_filetypes = {
      statusline = { 'alpha' }
    },
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  -- winbar = {
  --   lualine_a = {
  --     function ()
  --       return ' '
  --     end
  --   },
  -- },
  -- inactive_winbar = {
  --   lualine_a = {''},
  -- }
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  -- mode component
  function()
    local mode = vim.fn.mode()
    local mode_symbols = {
      n = ' N', -- Normal
      i = ' I', -- Insert
      v = ' V', -- Visual
      [''] = ' V', -- Visual block
      V = ' V', -- Visual line
      c = ' C', -- Command-line
      no = ' N', -- Operator pending
      s = ' S', -- Select
      S = ' S', -- Select line
      [''] = ' S', -- Select block
      ic = ' I', -- Insert completion
      R = ' R', -- Replace
      Rv = ' R', -- Virtual replace
      cv = ' C', -- Command-line Vim Ex
      ce = ' C', -- Normal Ex
      r = ' R', -- Hit-enter prompt
      rm = ' R', -- More-prompt
      ['r?'] = ' R', -- |more-prompt|
      ['!'] = ' !', -- Shell
      t = ' T', -- Terminal
    }
    return mode_symbols[mode]
  end,
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1, left = 1 },
}

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added = { fg = "#81C784" },
    modified = { fg = "#FFB74D" },
    removed = { fg = "#E57373" },
  },
  cond = conditions.hide_in_width,
}

ins_left {
  'branch',
  icon = '',
  color = { fg = '#BA68C8', gui = 'bold' },
}

ins_right {
  function ()
		local names = {}
		for i, server in pairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
			table.insert(names, server.name)
		end
    local count = #names
		return "" .. count .. " LSP"
  end,
  icon = '🧠',
  color = { fg = '#EF9A9A', gui = 'bold' },
}

ins_right {
  'progress',
  color = {
    fg = '#4DD0E1',
    gui = 'bold',
  },
}

ins_right {
  function()
    return cursor_location()
  end,
  color = { fg = '#4DD0E1', gui = 'bold' },
  -- padding = { right = 3 },
}

lualine.setup(config)
