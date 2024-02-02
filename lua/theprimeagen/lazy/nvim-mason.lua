return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    },

    config = function()
        require("mason").setup({
            PATH = "prepend",
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "...",
                    package_uninstalled = "x",
                },
            },
        })
        require("mason-lspconfig").setup({
            -- list of servers for mason to install
            ensure_installed = {
                "solidity",
                "tsserver",
                "html",
                "gopls",
                "tailwindcss",
                "lua_ls",
                "emmet_ls",
                "clangd"
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {}
                end,
            },
            automatic_installation = true,
        })
    end

}
