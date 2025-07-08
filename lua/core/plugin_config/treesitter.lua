require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "python", "lua", "vim", "vimdoc", "query",
    "javascript", "typescript", "tsx", "html", "css",
    "json", "yaml", "toml", "markdown", "markdown_inline",
    "bash", "go", "rust", "c", "cpp"
  },
  sync_install = false,
  auto_install = true,
  
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  
  indent = {
    enable = true,
  },
  
  incremental_selection = {
    enable = false,
  },
}
