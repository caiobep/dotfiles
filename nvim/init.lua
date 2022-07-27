require("core")
require("plugins")

-- Require every file inside lua/config
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/config', [[v:val =~ '\.lua$']])) do
	require('config.' .. file:gsub('%.lua$', ''))
end
