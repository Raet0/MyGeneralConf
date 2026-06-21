return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
        
        { "<C-e>", function () Snacks.explorer() end, desc = "Toggle File Explorer" },
    },
    opts = {
        bigfile = { enabled = true },  -- Abre archivos grandes sin lag
        notifier = { enabled = true }, -- Activa notificaciones bonitas
        quickfile = { enabled = true }, -- Aceleración de lectura de archivos
        statuscolumn = { enabled = true }, -- Mejora la columna de números
        words = { enabled = true }, -- Resalta palabras iguales (LSP)
        image = { enabled = false }, -- Apagamos el renderizado que choca con Zellij
        -- configurando solo el explorador de archivos
        explorer = { enabled = true },
        picker = {
            enabled = true,
            sources = {
                explorer = {
                    layout = {
                        present = "sidebar",
                        layout = {
                            position = "right",
                            widtg = 30,
                        },
                    } ,

                },

            },
        },
    },
}
