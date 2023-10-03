require("chambers/keymaps")
require("chambers/lazy")
require("chambers/settings")
require("chambers/ui")
require("chambers/plugins/cmp")
require("chambers/plugins/telescope")
require("chambers/plugins/tree")
require("chambers/plugins/treesitter")

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.lua_ls.setup({ settings = { Lua = { diagnostics = { globals = { "vim" } },
        },
    },
})
