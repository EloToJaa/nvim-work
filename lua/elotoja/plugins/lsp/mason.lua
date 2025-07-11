return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"emmet_ls",
				"pyright",
				"ruff",
				"zls",
				"gopls",
				-- "clangd", -- replaced by clang-tools from nixpkgs
				"bashls",
				"markdown_oxide",
				"taplo", --toml
				"yamlls", --yml
				"jsonls", --json
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettierd",
				"stylua",
				"luacheck",
				-- "clang-format", -- replaced by clang-tools from nixpkgs
				"shfmt",
				"eslint_d",
				-- "cpplint",
				"gofumpt",
				"mypy",
			},
		})
	end,
}
