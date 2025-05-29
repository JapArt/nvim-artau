return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = { bold = true, },
      keywordStyle = { italic = true }, 
      statementStyle = { bold = true },
      transparent = false, -- do not set background color
      dimInactive = false, -- do not dim inactive windows
      terminalColors = false, -- enable terminal colors
      overrides = function(colors)
	local theme = colors.theme
	return {
	  Normal = { fg = colors.fg, bg = colors.bg },
	  StatusLine = { fg = colors.fg, bg = colors.bg_dark },
	  StatusLineNC = { fg = colors.fg_gutter, bg = colors.bg_dark },
	  Visual = { bg = colors.bg_highlight },
	  Search = { fg = colors.fg, bg = colors.bg_highlight },
	  NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
	  Boolean = { italic = true },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
	}
      end,
    })
  end
}
