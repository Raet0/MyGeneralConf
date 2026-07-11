return {
    "folke/noice.nvim",
    enabled = false,
    lazy = false, -- Cambiado de "VeryLazy" a false para capturar errores de arranque
    dependencies = {
        "MunifTanjim/nui.nvim",
        -- ELIMINADO: "rcarriga/nvim-notify". Ahora usará snacks.notifier automáticamente.
    },
    opts = {
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },

        -- CORREGIDO: Las vistas se definen directamente, sin require("noice").setup
        views = {
            cmdline_popup = {
                border = {
                    style = "none",
                    padding = { 2, 3 },
                },
                filter_options = {},
                win_options = {
                    winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
                },
            },
        },

        presets = {
            bottom_search = false,         
            command_palette = true,       
            long_message_to_split = false, 
            inc_rename = false,            
            lsp_doc_border = false,        
        },
    },
}
