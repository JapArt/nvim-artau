return {
  "vim-test/vim-test",
  config = function()
    vim.g["test#strategy"] = "neovim"
		vim.g["test#ruby#minitest#executable"] = "bin/rails test"
  end,
}
