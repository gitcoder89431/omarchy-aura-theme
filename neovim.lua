local aura_repo = "/home/dev/repos/dev/aura-theme"
local aura_local = aura_repo .. "/packages/neovim"
local aura_plugin = {
	"baliestri/aura-theme",
	lazy = false,
	priority = 1000,
	rtp = "packages/neovim",
}

if vim.fn.isdirectory(aura_repo) == 1 then
	aura_plugin = {
		dir = aura_repo,
		name = "aura-theme",
		lazy = false,
		priority = 1000,
		rtp = "packages/neovim",
	}
end

return {
	aura_plugin,
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				if vim.fn.isdirectory(aura_local) == 1 then
					vim.opt.rtp:prepend(aura_local)
				else
					local aura_lazy = vim.fn.stdpath("data") .. "/lazy/aura-theme/packages/neovim"
					if vim.fn.isdirectory(aura_lazy) == 1 then
						vim.opt.rtp:prepend(aura_lazy)
					end
				end
				vim.cmd.colorscheme("aura-dark")
			end,
		},
	},
}
