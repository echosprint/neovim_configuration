local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use "lunarvim/darkplus.nvim"
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-treesitter/nvim-treesitter'
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use { "numToStr/Comment.nvim" ,
      config = function() require("Comment").setup {} end}
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "akinsho/bufferline.nvim" }


  -- -- cmp plugins
  -- use { "hrsh7th/nvim-cmp" } -- The completion plugin
  -- use { "hrsh7th/cmp-buffer" } -- buffer completions
  -- use { "hrsh7th/cmp-path" } -- path completions
  -- use { "hrsh7th/cmp-nvim-lsp" }

  -- -- LSP
  -- -- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
  -- use { "neovim/nvim-lspconfig" } -- enable LSP
  -- use { "williamboman/mason.nvim" }
  -- use { "williamboman/mason-lspconfig.nvim" }
  -- use { "jose-elias-alvarez/null-ls.nvim" } -- for formatters and linters
  -- use { "RRethy/vim-illuminate" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
