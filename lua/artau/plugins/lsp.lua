return {
  "nvimdev/lspsaga.nvim", -- Optional UI for LSP
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "ruby",
      callback = function()
        if vim.lsp.get_active_clients({ name = "ruby_ls" })[1] then return end

        local cmd = { "ruby-lsp" }

        vim.lsp.start({
          name = "ruby_ls",
          cmd = cmd,
          root_dir = vim.fs.dirname(
            vim.fs.find({ ".git", ".ruby-version", "Gemfile" }, { upward = true })[1]
          ),
          settings = {},
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
      end,
    })
  end,
}
