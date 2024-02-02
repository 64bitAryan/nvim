local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("theprimeagen.lazy")

--[[require("lazy").setup({
'nvim-treesitter/nvim-treesitter',
{
'rose-pine/neovim',
name = 'rose-pine',
config = function() 
vim.cmd("colorscheme rose-pine")
end,

},
'jiangmiao/auto-pairs',
'nvim-lualine/lualine.nvim',
}, {}) 
]]--
