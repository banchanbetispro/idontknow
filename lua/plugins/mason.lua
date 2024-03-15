return {
	{
		'williamboman/mason.nvim',
		opts = {
			ensure_installed = {
				"mypy",
				"pyright",
				"cmake-language-server",
				"clangd",
				"clang-format"
			}
		} 
	},
	{
		"williamboman/mason-lspconfig.nvim"
	}
}
