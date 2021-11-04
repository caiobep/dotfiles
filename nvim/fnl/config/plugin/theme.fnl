(module config.plugin.theme
  {autoload {nvim aniseed.nvim}})

(nvim.ex.autocmd "FocusGained,BufEnter" "*" ":colorscheme gruvbox-flat")
