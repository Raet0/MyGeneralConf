return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
        -- Tu función personalizada intacta
        local function lsp_status()
            local msg = 'No LSP'
            local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            if next(clients) == nil then return msg end
            for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                    return client.name
                end
            end
            return msg
        end
        require('lualine').setup({
            options = {
                theme = 'iceberg_dark', -- Puedes probar 'onedark' si quieres el gris exacto de la foto
                -- EL SECRETO DEL DISEÑO DE LA IMAGEN:
                -- 1. Separadores de componentes (las barras delgadas entre texto)
                component_separators = { left = '|', right = '|' },
                -- 2. Separadores de secciones (vacíos para lograr el corte recto de bloque)
                section_separators = { left = '', right = '' },
                globalstatus = true,
                disabled_filetypes = { statusline = { 'dashboard', 'alpha', 'snacks_dashboard' } },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 
                    { 'branch', icon = '' }, 
                    { 'diff', symbols = { added = ' ', modified = '󰝤 ', removed = ' ' } } 
                },
                lualine_c = { 
                    { 'filename', path = 0, symbols = { modified = ' [+]', readonly = ' [-]', unnamed = '[No Name]' } },
                },
                lualine_x = {
                    { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵 ' } },
                    { lsp_status, icon = '' },
                    'encoding',
                    'fileformat',
                    'filetype'
                },
                lualine_y = { 'progress' },
                lualine_z = { 
                    'location',
                    { 
                        function() return os.date('%H:%M') end, 
                        icon = '', -- Nerd Font clock icon
                    }
                },
            },
        })
    end
}
