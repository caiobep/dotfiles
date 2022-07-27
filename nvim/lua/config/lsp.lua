require("mason").setup()
require("mason-lspconfig").setup()

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

local telescopeFunctions = require("telescope.builtin")
local wk = require("which-key")

wk.register({
	K = { vim.lsp.buf.hover, "Show hover" },
	gd = { vim.lsp.buf.definition, "Goto Definition" },
	gD = { vim.lsp.buf.declaration, "Goto declaration" },
	gr = { vim.lsp.buf.references, "Goto references" },
	gI = { vim.lsp.buf.implementation, "Goto Implementation" },
	gs = { vim.lsp.buf.signature_help, "show signature help" },
	gp = { function() require("lvim.lsp.peek").Peek "definition" end, "Peek definition" },
	gl = { function() local config = lvim.lsp.diagnostics.float config.scope = "line" vim.diagnostic.open_float(0, config) end, "Show line diagnostics" },
}, { mode = "n" })

wk.register({
	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
		w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
		f = { vim.lsp.buf.formatting, "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
		j = {
			vim.diagnostic.goto_next,
			"Next Diagnostic",
		},
		k = {
			vim.diagnostic.goto_prev,
			"Prev Diagnostic",
		},
		l = { vim.lsp.codelens.run, "CodeLens Action" },
		q = { vim.diagnostic.setloclist, "Quickfix" },
		r = { vim.lsp.buf.rename, "Rename" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		S = {
			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
			"Workspace Symbols",
		},
		e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
	},
}, { prefix = "<leader>" })
