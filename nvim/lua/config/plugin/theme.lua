local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/plugin/theme.fnl"
local _2amodule_name_2a = "config.plugin.theme"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local core, nvim, theme = autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("github-theme")
do end (_2amodule_locals_2a)["core"] = core
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["theme"] = theme
theme.setup({theme_style = "dark", comment_style = "italic", hide_inactive_statusline = false, colors = {bg = "#1c1b22"}})
nvim.ex.hi("ColorColumn guibg=#19181e")
nvim.ex.hi("NonText ctermfg=7 guifg=#323138")
nvim.ex.hi("EndOfBuffer guifg=#19181e")
nvim.ex.hi("Pmenu guibg=#19181e")
return nvim.ex.hi("VertSplit guifg=#19181e")