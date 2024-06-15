local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)

    use("wbthomason/packer.nvim")
    use 'navarasu/onedark.nvim'
    use ("christoomey/vim-tmux-navigator")
    use("cohama/lexima.vim")
    use("szw/vim-maximizer") 

    use("tpope/vim-surround") -- Lets you surround word viw ys - motion - character
    use("vim-scripts/ReplaceWithRegister")
    use("numToStr/Comment.nvim")

    use("nvim-lua/plenary.nvim")

    use("nvim-tree/nvim-tree.lua")
    use("kyazdani42/nvim-web-devicons")

    use("nvim-lualine/lualine.nvim") 
    
    -- Fuzzy finding
    use({ "nvim-telescope/telescope-fzf-native.nvim", run="make"})
    use({ "nvim-telescope/telescope.nvim", branch="0.1.x" })

    -- Autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- Snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

   -- Managing and installing LSP servers
   use("williamboman/mason.nvim")
   use("williamboman/mason-lspconfig.nvim")

    -- Configuring the LSP servers
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use({ "glepnir/lspsaga.nvim", branch="main" })
    use("jose-elias-alvarez/typescript.nvim")
    use("onsails/lspkind.nvim")

    if packer_bootstrap then
        require("packer").sync()
    end
end)
