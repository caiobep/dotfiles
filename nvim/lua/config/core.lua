local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/core.fnl"
local _2amodule_name_2a = "config.core"
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
local nvim, str, util = autoload("aniseed.nvim"), autoload("aniseed.string"), autoload("config.util")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["str"] = str
_2amodule_locals_2a["util"] = util
nvim.ex.autocmd("FocusGained,BufEnter", "*", ":checktime")
nvim.ex.set("nowrap")
local options = {encoding = "utf-8", spelllang = "en_us", backspace = "2", colorcolumn = "80", errorbells = true, backup = false, swapfile = false, showmode = false, number = true, ruler = true, completeopt = "menuone,noselect", wildmenu = true, wildignore = "*/tmp/*,*.so,*.swp,*.zip", ignorecase = true, smartcase = true, clipboard = "unnamedplus", list = true, listchars = str.join(",", {"tab:\226\150\182-", "trail:\226\128\162", "extends:\194\187", "precedes:\194\171", "eol:\194\172"}), expandtab = true, tabstop = 2, shiftwidth = 2, softtabstop = 2, undofile = true, splitbelow = true, splitright = true, hlsearch = true}
for option, value in pairs(options) do
  util["set-global-option"](option, value)
end
return nil