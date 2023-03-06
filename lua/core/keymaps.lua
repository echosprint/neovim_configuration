vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>c', ':wq<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>s', ':w<CR>')
vim.keymap.set('i', 'jk', '<Esc>')

-- Comment
vim.keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
vim.keymap.set("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>ft", ":Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {})
vim.keymap.set('n', '<Space><Space>', ":Telescope find_files<CR>", {})

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})

-- Close buffers
vim.keymap.set("n", "<leader>q", "<cmd>bdelete<CR>", {})
