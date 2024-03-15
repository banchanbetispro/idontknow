local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--Main settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4



--require("neoconf").setup()
require("keymaps")
require("lazy").setup({{import = 'plugins'}})
require('nvim-tree').setup {}
require("lualine").setup {}
require("gitsigns").setup {}

