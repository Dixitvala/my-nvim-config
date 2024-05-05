local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- plugins
local plugins = 
{
	{
		"nvim-lua/plenary.nvim" 
	},
	{ 
		"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	
	{ "nvim-telescope/telescope.nvim", branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } }
}

local opts = {}

require("lazy").setup(plugins, opts)
