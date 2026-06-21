return {
    'lmantw/themify.nvim',
    priority = 10000,
    lazy = false,
    config = function()
        -- 1. MECANISMO DE TRANSPARENCIA UNIVERSAL:
        -- Se ejecuta automáticamente cada vez que cambias de tema en el selector
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "*",
            callback = function()
                -- Lista de grupos de resaltado principales que pintan fondos sólidos
                local hl_groups = {
                    "Normal",       -- Fondo del editor principal
                    "NormalFloat",  -- Fondo de ventanas flotantes (LSP/Noice)
                    "NormalNC",     -- Fondo de ventanas inactivas
                    "SignColumn",   -- Columna lateral de iconos (Gitsigns/Diagnósticos)
                    "EndOfBuffer",  -- Líneas vacías al final del archivo (~)
                }
                for _, group in ipairs(hl_groups) do
                    -- Forzamos el color de fondo a 'none' tanto para GUI como para terminal
                    vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
                end
            end,
        })
        -- 2. INICIALIZACIÓN DEL SELECTOR DE TEMAS:
        require('themify').setup({
            -- Temas administrados
            'folke/tokyonight.nvim',
            'Mofiqul/vscode.nvim',
            'bluz71/vim-moonfly-colors',
            'projekt0n/github-nvim-theme',
            'rebelot/kanagawa.nvim',
            'rose-pine/neovim',
            -- Opciones del gestor
            async = false,
            activity = true, -- Guarda el estado del último tema activo
        })
    end,
}
