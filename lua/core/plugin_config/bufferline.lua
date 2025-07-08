local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    offsets = { 
      { 
        filetype = "NvimTree", 
        text = "File Explorer", 
        text_align = "center",
        padding = 1,
      } 
    },
    separator_style = "thin",
    modified_icon = '●',
    show_close_icon = true,
    show_buffer_close_icons = true,
    show_tab_indicators = true,
    diagnostics = false,
  },
}