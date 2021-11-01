local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/mapping.fnl"
local _2amodule_name_2a = "config.mapping"
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
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
nvim.set_keymap("n", "<CR>", ":noh<CR><CR>", {noremap = true})
return nvim.set_keymap("n", "<C-w>T", ":tab split<CR>", {noremap = true, silent = true})