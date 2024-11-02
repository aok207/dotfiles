return {
  "catppuccin/nvim",
  priority = 1000,
  name = "catppuccin",
  main = "catppuccin",
  config = function()
    require("catppuccin").setup({ flavour = "macchiato", transparent_background = true })
    vim.cmd.colorscheme "catppuccin"
  end
}
