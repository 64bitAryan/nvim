return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function() 
            vim.cmd("colorscheme rose-pine")
        end,

    },
    { 
        'nvim-treesitter/playground',
        build = ":TSUpdate",
    },

    'mbbill/undotree',
    'tpope/vim-fugitive',
}

