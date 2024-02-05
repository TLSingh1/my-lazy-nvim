require("tokyonight").setup({
  style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  --[[ --- @param colors ColorScheme ]]
  on_colors = function(colors)
    -- colors.fg = "#DCD7BA"
    -- colors.fg_dark = "#C8C093"
    --[[ colors.bg = "#011826" ]]
    --[[ colors.bg_dark = "#011826" ]]
    --[[ colors.bg_float = "#011826" ]]
    --[[ colors.bg_highlight = "#011826" ]]
    --[[ colors.bg_popup = "#011826" ]]
    --[[ colors.bg_search= "#011826" ]]
    colors.bg_sidebar = "#011826"
    --[[ colors.bg ]]
    --[[ colors.fg = "" ]]
    --[[ colors.bg_statusline = "#011826" ]]
    --[[ colors.bg_visual = "#011826" ]]


    --[[ colors.bg = "#011826" ]]
    --[[ colors.bg_statusline = "#000000" ]]
  end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  --[[ ---@param highlights Highlights ]]
  --[[ ---@param colors ColorScheme ]]
  on_highlights = function(hl, c)
    local prompt = "#0B2534"
    local bgColor = "#011826"
    local textColor = "#38587D"
    hl.ToggleTerm = {
      bg = bgColor,
    }
    hl.TelescopeNormal = {
      bg = bgColor,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = bgColor,
      fg = bgColor,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      --[[ fg = prompt, ]]
      fg = "#1aFFFF",
    }
    hl.TelescopePreviewTitle = {
      --[[ bg = c.bg_dark, ]]
      --[[ fg = c.bg_dark, ]]
      fg = "#1aFFFF",
    }
    hl.TelescopeResultsTitle = {
      --[[ bg = c.bg_dark, ]]
      fg = "#1aFFFF",
    }
  end,
})
