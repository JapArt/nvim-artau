return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  config = function()
    require("nvim-tree").setup {
      renderer = {
        highlight_git = true,
        highlight_opened_files = "all",
        indent_markers = {
	  enable = true,
        },
      icons = {
	show = {
	  file = true,
	  folder = true,
	  folder_arrow = true,
	  git = true,
	},
	git_placement = "before",
	glyphs = {
	  folder = {
              default = "📁",       -- Closed folder
              open = "📂",          -- Open folder
              empty = "🗀",         -- Empty closed folder
              empty_open = "🗁",    -- Empty open folder
              symlink = "🔗",       -- Folder symlink
              symlink_open = "🔗",  -- Open folder symlink
          },
	  git = {
    		unstaged = "📝",
    		staged = "✅",
    		unmerged = "🔀",
    		renamed = "🔁",
    		deleted = "❌",
    		untracked = "✨",
    		ignored = "🙈",
               },
	},
      },
      },
    }
  end,
}
