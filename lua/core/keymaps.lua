local opts = { noremap = true, silent = true }

-- Basic mappings
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', opts)
vim.keymap.set('i', 'jk', '<Esc>', opts)

-- File operations
vim.keymap.set('n', '<leader>w', ':w<CR>', opts)
vim.keymap.set('n', '<leader>s', ':w<CR>', opts)
vim.keymap.set('n', '<leader>q', ':q!<CR>', opts)

-- Comment
vim.keymap.set('n', '<leader>/', "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
vim.keymap.set('x', '<leader>/', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
vim.keymap.set('n', '<leader>c', "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
vim.keymap.set('x', '<leader>c', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', opts)
vim.keymap.set('n', '<leader>ft', ':Telescope live_grep<CR>', opts)
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', opts)
vim.keymap.set('n', '<Space><Space>', ':Telescope find_files<CR>', opts)

-- Buffer navigation
vim.keymap.set('n', '<S-l>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', opts)

-- Git navigation
vim.keymap.set('n', ']c', function()
  if vim.wo.diff then return ']c' end
  vim.schedule(function() require('gitsigns').next_hunk() end)
  return '<Ignore>'
end, {expr=true, desc = "Next git hunk"})

vim.keymap.set('n', '[c', function()
  if vim.wo.diff then return '[c' end
  vim.schedule(function() require('gitsigns').prev_hunk() end)
  return '<Ignore>'
end, {expr=true, desc = "Previous git hunk"})

-- Git operations
vim.keymap.set('n', '<leader>gs', function() require('gitsigns').stage_hunk() end, {desc = "Stage hunk"})
vim.keymap.set('n', '<leader>gr', function() require('gitsigns').reset_hunk() end, {desc = "Reset hunk"})
vim.keymap.set('v', '<leader>gs', function() require('gitsigns').stage_hunk({vim.fn.line('.'), vim.fn.line('v')}) end, {desc = "Stage hunk"})
vim.keymap.set('v', '<leader>gr', function() require('gitsigns').reset_hunk({vim.fn.line('.'), vim.fn.line('v')}) end, {desc = "Reset hunk"})
vim.keymap.set('n', '<leader>gS', function() require('gitsigns').stage_buffer() end, {desc = "Stage buffer"})
vim.keymap.set('n', '<leader>gu', function() require('gitsigns').undo_stage_hunk() end, {desc = "Undo stage hunk"})
vim.keymap.set('n', '<leader>gR', function() require('gitsigns').reset_buffer() end, {desc = "Reset buffer"})
vim.keymap.set('n', '<leader>gp', function() require('gitsigns').preview_hunk() end, {desc = "Preview hunk"})
vim.keymap.set('n', '<leader>gb', function() require('gitsigns').blame_line() end, {desc = "Blame line"})
vim.keymap.set('n', '<leader>gd', function() require('gitsigns').diffthis() end, {desc = "Diff this"})
vim.keymap.set('n', '<leader>gD', function() require('gitsigns').diffthis('~') end, {desc = "Diff this ~"})

-- Git toggles
vim.keymap.set('n', '<leader>tgb', function() require('gitsigns').toggle_current_line_blame() end, {desc = "Toggle line blame"})
vim.keymap.set('n', '<leader>tgd', function() require('gitsigns').toggle_deleted() end, {desc = "Toggle deleted"})

-- Additional git viewing commands
vim.keymap.set('n', '<leader>gh', function() require('gitsigns').preview_hunk() end, {desc = "Preview hunk"})
vim.keymap.set('n', '<leader>gB', function() require('gitsigns').blame_line({full=true}) end, {desc = "Full blame"})

-- Fast preview hunk
vim.keymap.set('n', '<leader>p', function() require('gitsigns').preview_hunk() end, {desc = "Preview hunk (fast)"})

-- Git text object
vim.keymap.set({'o', 'x'}, 'ih', function() require('gitsigns').select_hunk() end, {desc = "Select hunk"})
