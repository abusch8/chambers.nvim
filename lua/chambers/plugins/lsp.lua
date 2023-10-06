local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.lua_ls.setup({ settings = { Lua = { diagnostics = { globals = { "vim" } } } } })

