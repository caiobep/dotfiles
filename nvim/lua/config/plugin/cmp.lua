local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/plugin/cmp.fnl"
local _2amodule_name_2a = "config.plugin.cmp"
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
local cmp, luasnip, nvim = autoload("cmp"), autoload("luasnip"), autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["cmp"] = cmp
_2amodule_locals_2a["luasnip"] = luasnip
_2amodule_locals_2a["nvim"] = nvim
local cmp_src_menu_items = {buffer = "buff", calc = "calc", conjure = "conj", nvim_lsp = "lsp", path = "path", vsnip = "vsnp", luasnip = "lnsp"}
_2amodule_locals_2a["cmp-src-menu-items"] = cmp_src_menu_items
local cmp_srcs = {{name = "nvim_lsp"}, {name = "conjure"}, {name = "luasnip"}, {name = "buffer"}, {name = "path"}, {name = "nvim_lua"}, {name = "vsnip"}, {name = "calc"}}
_2amodule_locals_2a["cmp-srcs"] = cmp_srcs
local function _1_(entry, item)
  item.menu = (cmp_src_menu_items[entry.source.name] or "")
  return item
end
local function _2_(args)
  return luasnip.lsp_expand(args.body)
end
cmp.setup({formatting = {format = _1_}, mapping = {["<C-p>"] = cmp.mapping.select_prev_item(), ["<C-n>"] = cmp.mapping.select_next_item(), ["<C-d>"] = cmp.mapping.scroll_docs(( - 4)), ["<C-f>"] = cmp.mapping.scroll_docs(4), ["<C-Space>"] = cmp.mapping.complete(), ["<C-e>"] = cmp.mapping.close(), ["<CR>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Insert, select = true})}, snippet = {expand = _2_}, sources = cmp_srcs})
return nvim.ex.hi("CmpItemMenu ctermfg=7 guifg=#b1b1b1")