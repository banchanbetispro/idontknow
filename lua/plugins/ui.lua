return {
	'nvimdev/dashboard-nvim',
  	event = 'VimEnter',

	opts = function()
		local logo = [[
		
	██╗  ██╗███████╗██╗  ██╗ █████╗  ██████╗  ██████╗ ███╗   ██╗
	██║  ██║██╔════╝╚██╗██╔╝██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║
	███████║█████╗   ╚███╔╝ ███████║██║  ███╗██║   ██║██╔██╗ ██║
	██╔══██║██╔══╝   ██╔██╗ ██╔══██║██║   ██║██║   ██║██║╚██╗██║
	██║  ██║███████╗██╔╝ ██╗██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║
	╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝
                                                            

		]]

		logo = string.rep("\n", 8) .. logo .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				-- this is taken care of by lualine
				-- enabling this messes up the actual laststatus setting after loading a file
				statusline = false,
			},
			config = {
				header = vim.split(logo,"\n"),

				center = {
					{
						icon = '󰭎 ',
						icon_hl = 'Title',
						desc = 'Find File',
						desc_hl = 'String',
						key = 'f',
						--keymap = 'f',
						key_hl = 'Number',
						key_format = ' %s', -- remove default surrounding `[]`
						action = 'Telescope file_browser'
					},

					{
						icon = '󰃀 ',
						icon_hl = 'Title',
						desc = 'Bookmark',
						desc_hl = 'String',
						key = 'r',
						--keymap = 'm',
						key_format = ' %s',
						action = 'lua require("telescope").extensions.vim_bookmarks.all()'
					},
					{
						icon = '󰁯 ',
						icon_hl = 'Title',
						desc = 'Restore session',
						desc_hl = 'String',
						key = 'p', 
						--keymap = 'p',
						key_format = ' %s',
						action = 'Telescope oldfiles',
					},
					{
						icon = '󰒲 ',
						icon_hl = 'Title',
						desc = 'Lazy',
						desc_hl = 'String',
						key = 'l',
						--keymap = 'l',
						key_format = ' %s',
						action = 'Lazy'
					},
					{
						icon = ' ',
						icon_hl = 'Title',
						desc = 'Quit',
						desc_hl = 'String',
						key = 'q',
						key_format = ' %s',
						action = 'qa'

					}
				}
			}
		}

		return opts
	end
}
