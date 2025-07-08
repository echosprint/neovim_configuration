local status, telescope = pcall(require, "telescope")
if not status then
  print("Telescope not found")
  return
end

telescope.setup({
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    path_display = { "truncate" },
    file_ignore_patterns = {
      "%.git/",
      "node_modules/",
      "%.npm/",
      "%.DS_Store"
    },
    dynamic_preview_title = false,
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<C-q>"] = "send_to_qflist",
        ["<C-u>"] = false,
        ["<C-d>"] = false,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
    },
    live_grep = {
      theme = "ivy",
    },
    buffers = {
      theme = "dropdown",
      previewer = false,
    },
  },
})
