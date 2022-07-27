
local wk = require("which-key")


local telescopeFunctions = require("telescope.builtin")
local wk = require("which-key")

wk.register({
	K = {vim.lsp.buf.hover, "Show hover"},
	gd = {vim.lsp.buf.definition, "Go to Definition"}
}, {mode= "n"})



