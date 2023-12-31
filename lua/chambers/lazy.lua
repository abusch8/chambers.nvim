local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "folke/tokyonight.nvim", priority = 1000 },
    { "nvim-treesitter/nvim-treesitter" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.3", dependencies = { "nvim-lua/plenary.nvim" } },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    { "lewis6991/gitsigns.nvim" },
    { "kyazdani42/nvim-tree.lua" },
    { "abusch8/nvim-nonicons", dependencies = { "nvim-tree/nvim-web-devicons" } },
    { "akinsho/bufferline.nvim" },
    { "lukas-reineke/indent-blankline.nvim" },
    { "toppair/peek.nvim", run = "deno task --quiet build:fast" },
    { "edluffy/hologram.nvim" },
})

