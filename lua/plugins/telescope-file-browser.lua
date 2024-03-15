return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		telescope = require("telescope")
		actions = require("telescope.actions")
		telescope.setup {
			defaults = {

				prompt_prefix = " ",
				selection_caret = " ",
				path_display = { "smart" },
				layout_config = {
					horizontal = {
						preview_cutoff = 99999999999,
					},
				},
				mappings = {
					i = {
						["<esc>"] = actions.close,
					},
				},
			}
		}

	end
}

