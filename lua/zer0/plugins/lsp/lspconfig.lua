local vars = require("zer0.vars")
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "folke/neodev.nvim", optional = true },
	},
	config = function()
        require("neodev").setup({})
		local lspconfig = require("lspconfig")
		for _, lsp_server in ipairs(vars.lsp_servers) do
			local is_config, config = pcall(require, "zer0.plugins.lsp.config." .. lsp_server)
			local setting = nil
			if is_config then
				setting = config
			end
			lspconfig[lsp_server].setup({
                root_dir = require('lspconfig.util').root_pattern('.git'),
				capabilities = vim.g.capabilities,
				settings = setting,
				on_attach = function(client)
					client.resolved_capabilities.document_formatting = false
				end,
			})
		end
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<leader>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<leader>F", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
			end,
		})
	end,
}
