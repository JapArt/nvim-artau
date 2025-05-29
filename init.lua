-- Set <leader> keys early
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Setup options (if you want to configure vim.opt, do it here)
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy
require("lazy").setup("artau.plugins")

vim.cmd.colorscheme("kanagawa")

-- NvimTree keymaps
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
vim.keymap.set("n", "<leader>c", ":NvimTreeClose<CR>", { desc = "Close NvimTree" })

-- Fzf-Lua keymaps
vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "FzfLua: Find files" })

