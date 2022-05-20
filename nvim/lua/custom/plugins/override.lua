local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "html",
      "css",
      "javascript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
      "python",
      "bash",
      "latex",
   },
   
   highlight = {
       enable = true,
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
