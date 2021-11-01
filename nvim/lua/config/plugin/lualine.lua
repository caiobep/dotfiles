local _2afile_2a = "/Users/caiobep/.config/nvim/fnl/config/plugin/lualine.fnl"
local _2amodule_name_2a = "config.plugin.lualine"
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
local core, lsp, lualine = autoload("aniseed.core"), autoload("config.plugin.lspconfig"), autoload("lualine")
do end (_2amodule_locals_2a)["core"] = core
_2amodule_locals_2a["lsp"] = lsp
_2amodule_locals_2a["lualine"] = lualine
local function lsp_connection()
  if vim.tbl_isempty(vim.lsp.buf_get_clients(0)) then
    return "\239\130\150"
  else
    return "\239\131\136"
  end
end
_2amodule_2a["lsp_connection"] = lsp_connection
local github_lua_theme = {inactive = {a = {bg = "#19181e", fg = "#a4a3a6"}, b = {bg = "#19181e", fg = "#a4a3a6"}, c = {bg = "#19181e", fg = "#a4a3a6"}}, normal = {a = {bg = "#131217", fg = "#24292e"}, b = {bg = "#131217", fg = "#3b8eea"}, c = {bg = "#19181e", fg = "#d1d5da"}}, command = {a = {bg = "#131217", fg = "#24292e"}, b = {bg = "#131217", fg = "#ccbed8"}, c = {bg = "#19181e", fg = "#d1d5da"}}, visual = {a = {bg = "#131217", fg = "#24292e"}, b = {bg = "#131217", fg = "#ced4b1"}, c = {bg = "#19181e", fg = "#d1d5da"}}, replace = {a = {bg = "#131217", fg = "#24292e"}, b = {bg = "#131217", fg = "#d1b6bd"}, c = {bg = "#19181e", fg = "#d1d5da"}}, insert = {a = {bg = "#131217", fg = "#24292e"}, b = {bg = "#131217", fg = "#a8d1c9"}, c = {bg = "#19181e", fg = "#d1d5da"}}}
_2amodule_2a["github-lua-theme"] = github_lua_theme
return lualine.setup({options = {theme = github_lua_theme, icons_enabled = false, section_separators = {"", ""}, component_separators = {"\239\145\138", "\239\144\184"}}, sections = {lualine_a = {}, lualine_b = {{"mode", {upper = true}}}, lualine_c = {{"FugitiveHead"}, {"filename", {filestatus = true, path = 1}}}, lualine_x = {{"diagnostics", {sections = {"error", "warn", "info", "hint"}, sources = {"nvim_lsp"}}}, {lsp_connection}, "location", "filetype"}, lualine_y = {"encoding"}, lualine_z = {}}, inactive_sections = {lualine_a = {}, lualine_b = {}, lualine_c = {{"filename", {filestatus = true, path = 1}}}, lualine_x = {}, lualine_y = {}, lualine_z = {}}})