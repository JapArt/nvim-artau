return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    previewers = {
      bat = {
        cmd = "bat",
        args = { "--style=numbers,changes", "--color=always", "--line-range", ":500" },
        theme = "Catppuccin Mocha",
        syntax = true,
        style = "plain",
      },
    },
  },
}
