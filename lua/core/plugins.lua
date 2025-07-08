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
  -- Package manager
  use 'wbthomason/packer.nvim'
  
  -- Color schemes
  use 'ellisonleao/gruvbox.nvim'
  use "lunarvim/darkplus.nvim"
  
  -- File explorer
  use 'nvim-tree/nvim-tree.lua'
  
  -- Syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'
  
  -- Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- Auto pairs and commenting
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use { "numToStr/Comment.nvim" ,
      config = function() require("Comment").setup {} end}
  
  -- UI enhancements
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "akinsho/bufferline.nvim" }
  
  -- Git integration
  use { "lewis6991/gitsigns.nvim" }


  -- LSP and completion (commented out - add when needed)
  -- use { "hrsh7th/nvim-cmp" }
  -- use { "hrsh7th/cmp-buffer" }
  -- use { "hrsh7th/cmp-path" }
  -- use { "hrsh7th/cmp-nvim-lsp" }
  -- use { "neovim/nvim-lspconfig" }
  -- use { "williamboman/mason.nvim" }
  -- use { "williamboman/mason-lspconfig.nvim" }
  -- use { "jose-elias-alvarez/null-ls.nvim" }
  -- use { "RRethy/vim-illuminate" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
