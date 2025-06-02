return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = false },
      functionStyle = { bold = true, },
      keywordStyle = { italic = true }, 
      statementStyle = { bold = true },
      transparent = false, -- do not set background color
      dimInactive = false, -- do not dim inactive windows
      terminalColors = false, -- enable terminal colors
      colors = {
	theme = { 
	  wave = {
	    ui = {
	      bg = "#16161D", -- dark background for NormalDark
	    },
	 },
	},
      },
      theme = "wave", -- set the theme to 'wave' 
      overrides = function(colors)
	local theme = colors.theme
	return {
	  NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
	  Boolean = { italic = true },
	  Operator = { fg = "#D27E99" }, -- pino
	  
	  -- Ruby specific
	  rubyInterpolation = { fg = "#FFA066" }, -- orange
	  rubyKeyword = { fg = "#FFA066", italic = true }, -- orange
	  rubyPseudoVariable = { fg = "#FFA066", italic = true }, -- orange
	  rubyModuleName = { fg = "#76946A", bold = true }, -- green
	  rubyAccess = { fg = "#D27E99", italic = true }, -- pink
	  rubyInstanceVariable = { fg = "#FF9E3B"}, -- yellow
	  rubyMacro = { italic = true }, -- green
	  rubyEntity = { fg = "#7E9CD8" }, -- blue
	  rubyEntities = { fg = "#7E9CD8" }, -- blue
	  rubyValidation = { fg = "#7E9CD8" }, -- blue
	  rubyCallback = { fg = "#7E9CD8" }, -- blue
	  rubySharpBang = { fg = "#FF5D62" }, -- red
	  rubyBlockParameterList = { fg = "#FFA066" }, -- orange
	  rubyDoBlock = { fg = "#FFFFFF" }, -- white
	  rubyDefine = { fg = "#957FB8" }, -- violet
	  rubySymbol = { fg = "#938AA9" }, -- light-violet
	  rubySymbolDelimiter = { fg = "#FFA066" }, -- orange
	  rubyClassName = { fg = "#7AA89F", bold = true }, -- bold
	  rubyConstant = { fg = "#7AA89F", bold = true }, -- bold
	  rubyConditional = { fg = "#D27E99", italic = true }, -- pink
	  rubyBeginEnd = { fg = "#D27E99", italic = true }, -- pink
	  rubyControl = { fg = "#D27E99", italic = true }, -- pink
	  rubyMethod = { fg = "#98BB6C" }, -- green
	  rubyMethodName = { fg = "#98BB6C" }, -- blue
	  rubyBangPredicateMethod = { fg = "#D27E99", italic = true }, -- pink
	  rubyResponse = { fg = "#957FB8" }, -- violet  
	  -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.bg_m3, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
	}
      end,
    })
  end
}
