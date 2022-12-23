
-- Ce script définit un groupe d'autocommandes appelé "packer_user_config", qui vous permet de
-- organiser vos autocommandes de manière logique. Le groupe contient une seule autocommande, qui
-- est exécutée après l'enregistrement d'un fichier (avec l'événement "BufWritePost"). Lorsqu'elle est exécutée, elle
-- source le fichier spécifié dans <afile> et exécute la commande "PackerSync". Cela peut être
-- utile si vous souhaitez que votre configuration soit mise à jour automatiquement à chaque modification du
-- fichier de configuration "setup.lua".

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost setup.lua source <afile> | PackerSync
augroup end
]])

-- Cette ligne de code importe le module "packer" et stocke son résultat dans la variable "packer".
-- La fonction "pcall" est utilisée pour appeler la fonction "require" de manière protégée, c'est-à-dire
-- qu'elle permet de capturer toutes les erreurs qui pourraient être générées lors de l'appel de "require".
-- Si l'appel à "require" a réussi (c'est-à-dire que le module a été importé avec succès), alors la variable
-- "status" contiendra la valeur "true" et "packer" contiendra la valeur retournée par "require".
-- Si l'appel à "require" a échoué (par exemple si le module n'a pas été trouvé), alors "status" contiendra
-- la valeur "false" et "packer" contiendra la valeur "nil".
-- La condition "if not status" vérifie si "status" est égal à "false", et si c'est le cas, la fonction retourne
-- immédiatement sans exécuter le reste du code. Cela permet de s'assurer que le reste du code ne sera pas exécuté
-- si le module "packer" n'a pas pu être importé.

local status, packer = pcall(require, "packer")
if not status then
    return
end

----🄻 🄸 🅂 🅃  🄾 🄵  🄿 🄻 🅄 🄶 🄸 🄽 🅂 ----

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("numToStr/Comment.nvim")
	use("nvim-lualine/lualine.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("utilyre/barbecue.nvim")
	use("smiteshp/nvim-navic")
	use("kyazdani42/nvim-web-devicons")
	use({'romgrk/barbar.nvim', wants = 'nvim-web-devicons'})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
		  local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		  ts_update()
		end,
	  })
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")
    use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
    use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
    use("windwp/nvim-autopairs")
    use("yamatsum/nvim-cursorline")
    use("norcalli/nvim-colorizer.lua")
    use("petertriho/nvim-scrollbar")
    use {"lewis6991/gitsigns.nvim",
        config = function()
        require('gitsigns').setup()
        require("scrollbar.handlers.gitsigns").setup()
        end
        }
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use("nvim-treesitter/playground")











    if packer_bootstrap then
    require("packer").sync()
end
end)
