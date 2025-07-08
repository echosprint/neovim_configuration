-- Configure Gruvbox theme
local status, gruvbox = pcall(require, "gruvbox")
if not status then
  print("Gruvbox not found")
  return
end

-- Set background before loading colorscheme
vim.o.background = "dark"

gruvbox.setup({
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true,
  contrast = "",
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

-- Load colorscheme
vim.cmd("colorscheme gruvbox")
