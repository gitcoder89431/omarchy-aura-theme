return {
	{
		"baliestri/aura-theme",
		lazy = false,
		priority = 1000,
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
			vim.cmd("colorscheme aura-soft-dark")
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aura-soft-dark",
		},
	},
}
