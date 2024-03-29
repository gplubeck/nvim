-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- -- Only required if you have packer configured as `opt`
 vim.cmd [[packadd packer.nvim]]
--
 return require('packer').startup(function(use)
--   -- Packer can manage itself
    use 'wbthomason/packer.nvim'

-- telescope install
use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
--    or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}

--rose-pine colorscheme
use({ 'rose-pine/neovim', as = 'rose-pine' })

vim.cmd('colorscheme rose-pine')

-- install tree sitter
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

-- WhichKey plugin
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section
    }
  end
}

-- LSP Setup
  use {
          'VonHeikemen/lsp-zero.nvim',
              branch = 'v1.x',
              requires = {
                  -- LSP Support
                  {'neovim/nvim-lspconfig'},
                  {'williamboman/mason.nvim'},
                  {'williamboman/mason-lspconfig.nvim'},

                  -- Autocompletion
                  {'hrsh7th/nvim-cmp'},
                  {'hrsh7th/cmp-buffer'},
                  {'hrsh7th/cmp-path'},
                  {'saadparwaiz1/cmp_luasnip'},
                  {'hrsh7th/cmp-nvim-lsp'},
                  {'hrsh7th/cmp-nvim-lua'},

                  -- Snippets
                  {'L3MON4D3/LuaSnip'},
                  {'rafamadriz/friendly-snippets'},
              }
                                                                                                                                              }


--after all plugins
end)

