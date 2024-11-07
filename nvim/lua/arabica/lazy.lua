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
require("lazy").setup({
    "nvim-telescope/telescope.nvim",
    "folke/tokyonight.nvim",
    {
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
    },
    
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate"
    },
    {"theprimeagen/harpoon", dependencies={"nvim-lua/plenary.nvim"}},
    "mbbill/undotree",
    "nvim-neotest/nvim-nio",
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python",
    {"rcarriga/nvim-dap-ui", 
        dependencies = {"mfussenegger/nvim-dap", 
                        "nvim-neotest/nvim-nio"} },
    {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {"windwp/nvim-autopairs",
	    	config = function() require("nvim-autopairs").setup {} end
	},
    {"tpope/vim-fugitive"},
    },
    {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
    },
    {
  "lervag/vimtex",
  lazy = true, -- lazy-loading will disable inverse search
  }
)
