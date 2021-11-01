local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/plugin/tmux-navigator.fnl"
local _2amodule_name_2a = "config.plugin.tmux-navigator"
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
nvim.g.tmux_navigator_no_mappings = 1
nvim.set_keymap("n", "<C-h>", ":TmuxNavigateLeft<cr>", {noremap = true, silent = true})
nvim.set_keymap("n", "<C-j>", ":TmuxNavigateDown<cr>", {noremap = true, silent = true})
nvim.set_keymap("n", "<C-k>", ":TmuxNavigateUp<cr>", {noremap = true, silent = true})
return nvim.set_keymap("n", "<C-l>", ":TmuxNavigateRight<cr>", {noremap = true, silent = true})