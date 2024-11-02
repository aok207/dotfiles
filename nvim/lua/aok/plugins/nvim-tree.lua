return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    
    nvimtree.setup({
      view = {
        width = 35,
      },
      renderer = {
        indent_markers = {
          enable = true,
        }
      },
      sort = {
        sorter = "case_sensitive",
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          }
        }
      },
      filters = {
        dotfiles = true,
      },      
      git = {
        ignore = false,
      }
    })

    -- keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Toggle file explorer at the current file" })
    keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
    
  end,
}
