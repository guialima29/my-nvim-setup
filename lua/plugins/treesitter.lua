return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "markdown", "c", "cpp", "javascript", "html",
        "query", "vim", "vimdoc"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}

