return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
        highlight = "IblIndent",
      },
      scope = {
        enabled = true,
        highlight = "IblScope",
      },
    })
  end,
  event = { "BufReadPre", "BufNewFile" },
}

