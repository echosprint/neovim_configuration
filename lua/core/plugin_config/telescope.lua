require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  }
})
local builtin = require('telescope.builtin')


-- vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
-- vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
