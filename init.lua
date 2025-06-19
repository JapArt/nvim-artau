-- Set <leader> keys early
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Setup options (if you want to configure vim.opt, do it here)
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.tabstop = 2
vim.opt.termguicolors = true


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

-- Resize panes with arrows
vim.keymap.set("n", "<S-Up>", ":resize -3<CR>", { desc = "Resize pane up" })
vim.keymap.set("n", "<S-Down>", ":resize +3<CR>", { desc = "Resize pane down" })
vim.keymap.set("n", "<S-Left>", ":vertical resize +3<CR>", { desc = "Resize pane left" })
vim.keymap.set("n", "<S-Right>", ":vertical resize -3<CR>", { desc = "Resize pane right" })

-- Fzf-Lua keymaps
vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "FzfLua: Find files" })

-- Set Vim Test keymaps
vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>", { desc = "Run nearest test" })
vim.keymap.set("n", "<leader>tf", ":TestFile<CR>", { desc = "Run current test file" })
vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>", { desc = "Run entire test suite" })
vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc = "Re-run last test" })

