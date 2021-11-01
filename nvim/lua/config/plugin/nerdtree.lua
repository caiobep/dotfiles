local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/plugin/nerdtree.fnl"
local _2amodule_name_2a = "config.plugin.nerdtree"
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
local nvim = autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
nvim.set_keymap("n", "<leader>tt", ":NERDTreeToggle<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>tr", ":NERDTreeFind<CR>", {noremap = true})
nvim.ex.autocmd("BufEnter", "*", "if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif")
nvim.g.NERDTreeShowHidden = 1
nvim.g.NERDTreeIgnore = {"\\.git$[[dir]]"}
return nil