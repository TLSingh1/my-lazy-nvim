local lspconfig = require("lspconfig")

local servers = {
	"jsonls",
	"lua_ls",
	"rust_analyzer",
	"tsserver",
	"cssls",
	"html",
	"svelte",
	"tailwindcss",
	"taplo",
	"gopls",
	"golangci_lint_ls",
	"marksman",
  "vuels",
  "yamlls",
}

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("plugins.lsp.handlers").on_attach,
		capabilities = require("plugins.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
