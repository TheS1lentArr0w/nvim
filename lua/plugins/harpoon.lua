-- Using the newest version of Harpoon
-- Since I'm using it with Lazy rather than Packer, the Harpoon2 GitHub documentation doesn't really match
-- Had to get config below from Reddit ofc
-- 	https://www.reddit.com/r/neovim/comments/18as0nm/harpoon2_branch_lazy_vim_setup/


return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("harpoon"):setup()
	end,

	keys = {
		{ "<leader>a", function() require("harpoon"):list():add() end, desc = "harpoon file", },
		{ "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
		{ "<leader>j", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
		{ "<leader>k", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
		{ "<leader>l", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
		{ "<leader>;", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", }
	}
}
