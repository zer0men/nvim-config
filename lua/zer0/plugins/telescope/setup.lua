local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
	print(telescope)
	return
end
local z_utils = require("telescope._extensions.zoxide.utils")
telescope.setup({
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key",
			},
		},
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		buffers = {
			theme = "dropdown",
		},
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		zoxide = {
			prompt_title = "[ Walking on the shoulders of TJ ]",
			mappings = {
				default = {
					after_action = function(selection)
						print("Update to (" .. selection.z_score .. ") " .. selection.path)
					end,
				},
				["<C-s>"] = {
					before_action = function(selection)
						print("before C-s")
					end,
					action = function(selection)
						vim.cmd.edit(selection.path)
					end,
				},
				["<C-q>"] = { action = z_utils.create_basic_command("split") },
			},
		},
		docker = {
			-- These are the default values
			theme = "ivy",
			binary = "docker", -- in case you want to use podman or something
			compose_binary = "docker compose",
			buildx_binary = "docker buildx",
			machine_binary = "docker-machine",
			log_level = vim.log.levels.INFO,
			init_term = "tabnew", -- "vsplit new", "split new", ...
			-- NOTE: init_term may also be a function that receives
			-- a command, a table of env. variables and cwd as input.
			-- This is intended only for advanced use, in case you want
			-- to send the env. and command to a tmux terminal or floaterm
			-- or something other than a built in terminal.
		},
		fzf = {},
		emoji = {
			action = function(emoji)
				-- argument emoji is a table.
				-- {name="", value="", cagegory="", description=""}

				vim.fn.setreg("*", emoji.value)
				print([[Press p or "*p to paste this emoji]] .. emoji.value)

				-- insert emoji when picked
				-- vim.api.nvim_put({ emoji.value }, 'c', false, true)
			end,
		},
		repo = {
			list = {
				fd_opts = {},
				settings = {
					auto_lcd = true,
				},
			},
		},
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	},
})

vim.g["rooter_cd_cmd"] = "lcd"

local extensions = {
	"repo",
	"vimwiki",
	"fzf",
	"emoji",
	"yaml_schema",
	"docker",
	"zoxide",
}
for _, extension_name in pairs(extensions) do
	telescope.load_extension(extension_name)
end
