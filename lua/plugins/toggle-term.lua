return {
  "akinsho/toggleterm.nvim",
  config = function()
  require("toggleterm").setup({
    direction = "float"
  })
  vim.keymap.set('n', '<leader>t', "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
  end
  }
