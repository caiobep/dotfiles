local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/plugin/conjure.fnl"
local _2amodule_name_2a = "config.plugin.conjure"
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
nvim.g["conjure#mapping#doc_word"] = "K"
nvim.g["conjure#client#clojure#nrepl#eval#auto_require"] = false
nvim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
return nil