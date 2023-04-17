return require('packer').startup(function(use)
-- Packer can manage itself
  use 'wbthomason/packer.nvim'
--多行注释
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
  use 'nvim-tree/nvim-web-devicons'
--lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
  use 'folke/tokyonight.nvim'
--treesitter
--语法高亮
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
--dashboard-nvim
  use {'glepnir/dashboard-nvim'}
--终端插件
  use {"akinsho/toggleterm.nvim", tag = 'v2.*'} 
-- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
-- lsp配置
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use { "williamboman/mason.nvim" }
  use {'mfussenegger/nvim-dap'}
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)
