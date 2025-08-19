return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          layout_strategy = "vertical"
        }
      })

      vim.keymap.set('n', '<C-p>', function()
        builtin.find_files({ layout_strategy = "vertical" })
      end)
      vim.keymap.set('n', '<Leader>fg', function()
        builtin.live_grep({ layout_strategy = "vertical" })
      end)
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")   
    end
  },
}

