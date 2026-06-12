return{
	'lmantw/themify.nvim',
	priority = 10000,
	config = function()
		require('themify').setup({
			-- Themes 
            'folke/tokyonight.nvim',
            'Mofiqul/vscode.nvim',
            'bluz71/vim-moonfly-colors',
            'projekt0n/github-nvim-theme',
            'rebelot/kanagawa.nvim',
            'rose-pine/neovim',
			-- Opciones adicionales
			async = false,
			activity = true, -- Para que guarde cuál fue el último que usaste
		})
	end,
}
