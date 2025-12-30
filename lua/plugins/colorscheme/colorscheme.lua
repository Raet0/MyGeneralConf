return{
	'lmantw/themify.nvim',
	priority = 1000,
	config = function()
		require('themify').setup({
			-- Themes 
            'folke/tokyonight.nvim',
            'rebelot/kanagawa.nvim',
            'rose-pine/neovim',
			-- Opciones adicionales
			async = false,
			activity = true, -- Para que guarde cuál fue el último que usaste
		})
	end,
}
